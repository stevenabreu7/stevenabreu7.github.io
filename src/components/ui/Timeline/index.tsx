import React from 'react';

import * as Styled from './styles';

interface Props {
  title: string;
  subtitle: string;
  subsubtitle: string;
  content: React.ReactNode;
  startDate: string;
  endDate: string;
}

const Timeline: React.FC<Props> = ({ title, subtitle, subsubtitle, content, startDate, endDate }) => (
  <Styled.Timeline>
    <Styled.Point />
    <Styled.Details>
      <Styled.Date>
        {startDate} - {endDate}
      </Styled.Date>
      <Styled.Title>{title}</Styled.Title>
      <Styled.Subtitle>{subtitle}</Styled.Subtitle>
      <Styled.Location>{subsubtitle}</Styled.Location>
    </Styled.Details>
    <Styled.Content>{content}</Styled.Content>
  </Styled.Timeline>
);

export default Timeline;
