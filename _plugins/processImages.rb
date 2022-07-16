# _plugins/shuffle.rb
module Jekyll
    module ImageProcessingFilter
      def processImages(array)
        array = array.shuffle()
        array = array.select{ |photo| photo.path.include? 'img/portfolio/' }
        array = array.select{ |photo| photo.path.include? '.jpg' }
        portraits = array.select{ |photo| photo.path.include? '/portrait/' }
        landscapes = array.select{ |photo| photo.path.include? '/landscape/' }

        returnArray = []
        rowLength = 0

        for idx in 1..array.length()
            if rowLength == 6
                rowLength = 0
            end
            if rowLength <= 4
                # doesn't matter
                if rand() < 0.1
                    returnArray.append(portraits.pop())
                    rowLength = rowLength + 1
                else
                    returnArray.append(landscapes.pop())
                    rowLength = rowLength + 2
                end
            elsif rowLength == 5
                if portraits.length() > 0
                    # need portrait
                    returnArray.append(portraits.pop())
                end
                rowLength = 0
            else
                # need portrait but have no more portraits -> next row
                rowLength = 0
            end
        end

        returnArray
      end
    end
  end
  
  Liquid::Template.register_filter(Jekyll::ImageProcessingFilter)
