---
permalink: /
title: "About me"
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---
<!-- <div style="text-align: justify;">
I'm a PhD candidate in <span style="color: #0066cc;">Aerospace Structures and Materials</span> with focus on <span style="color: #FF6B6B;">machine learning </span> and composite materials.
</div> -->

<div style="text-align: justify;">
I'm a PhD candidate in the <a href="https://www.tudelft.nl/en/ae/organisation/departments/aerospace-structures-and-materials" style="color: #0ba3cd; text-decoration: none; font-weight: bold;">Aerospace Structures and Materials (ASM)</a> department at <a href="https://www.tudelft.nl/en/" style="color: inherit; text-decoration: none; font-weight: bold;">T<span style="color: #00A6D6;">U</span> Delft</a>, Faculty of Aerospace Engineering. My research lies at the intersection of deep learning and computational micromechanics, with a focus on the design and analysis of large-scale aerospace-grade composite structures. Prior to joining TU Delft, I worked as a master’s researcher in the <a href="http://mdam.kaist.ac.kr/" style="color: #0F4482; text-decoration: none; font-weight: bold;">Mechanical Design Lab. with Advanced Materials (MDAM)</a> at <a href="https://me.kaist.ac.kr/eng/main/main.html" style="color: inherit; text-decoration: none; font-weight: bold;"><span style="color: #0F4482;">KAIST</span></a>, South Korea where I focused on multifunctional carbon fiber-based structural batteries.
</div>

<br>

# Latest News
------
<div class="latest-news-container">
  <button class="news-nav news-nav-prev" id="newsPrev" type="button" aria-label="Previous news">&#10094;</button>
  <div class="news-scroll-wrapper" id="newsScroller">
    {% assign sorted_news = site.news | sort: 'date' | reverse %}
    {% for news_item in sorted_news limit:10 %}
      <div class="news-card">
        <div class="news-card-image">
          {% if news_item.image %}
            <img src="{{ news_item.image }}" alt="{{ news_item.title }}">
          {% else %}
            <img src="https://via.placeholder.com/320x200?text={{ news_item.title | replace: ' ', '+' }}" alt="{{ news_item.title }}">
          {% endif %}
        </div>
        <div class="news-card-content">
          <div class="news-card-date">{{ news_item.date | date: "%B %d, %Y" }}</div>
          <h3 class="news-card-title">{{ news_item.title }}</h3>
          <p class="news-card-excerpt">{{ news_item.excerpt | strip_html | truncatewords: 50 }}</p>
          <a href="{{ news_item.url }}" class="news-card-link">Read More &rarr;</a>
        </div>
      </div>
    {% endfor %}
  </div>
  <button class="news-nav news-nav-next" id="newsNext" type="button" aria-label="Next news">&#10095;</button>
</div>

<script src="{{ '/assets/js/news-carousel.js' | prepend: base_path }}"></script>





# Recent Posts
------
{% include base_path %}
<div class="news-archive-list">
  {% assign recent_posts = site.posts | sort: 'date' | reverse %}
  {% for post in recent_posts limit:5 %}
    {% include archive-single-news.html %}
  {% endfor %}
</div>

