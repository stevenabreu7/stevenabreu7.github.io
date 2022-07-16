---
layout: page
title: photography
permalink: /photo/
description: "Photography enables us to go where language cannot go, to simply experience and appreciate. To freeze time, to eternalize a moment, to capture truth or to distort it. Below you can see through my eyes: friends, strangers, stories, ideas."
nav: true
nav_order: 2
display_categories: [work, fun]
horizontal: false
---

<!-- pages/projects.md -->

<div>
  <div class="grid" style="width: calc(100vw); margin-left: calc(50% - 50vw); margin-right: calc(50% - 50vw); margin-bottom: 20px;">
    {% assign photos = site.static_files | processImages %}
    {% for photo in photos %}
      {% if photo.path contains 'img/portfolio/' %}
        {% if photo.portrait %}
          <div style="float:left; width:calc(16.5vw); height: calc(16.5vw * 1.33); margin-bottom: 10px;">
            <img src="{{ site.baseurl }}{{ photo.path }}" alt="photo" style="width:calc(100% - 10px); margin-right: 5px; margin-left: 5px; height:100%;" />
          </div>
        {% else %}
          <div style="float:left; width:calc(33.0vw); height: calc(16.5vw * 1.33); margin-bottom: 10px;">
            <img src="{{ site.baseurl }}{{ photo.path }}" alt="photo" style="width:calc(100% - 10px); margin-right: 5px; margin-left: 5px; height:100%;" />
          </div>
        {% endif %}
      {% endif %}
    {% endfor %}
  </div>
</div>
