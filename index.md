---
layout: default
---

<section class="hero">
    <h1>{{ site.title }}</h1>
    <p>{{ site.description }}</p>
</section>

<section class="posts-list">
    <h2>Latest Posts</h2>
    {% for post in site.posts limit:10 %}
        <article class="post-card">
            <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
            <div class="post-meta">
                <time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time>
                {% if post.categories %}
                    <span class="post-categories">
                        {% for category in post.categories limit:1 %}
                            <a href="/category/{{ category | downcase | replace: ' ', '-' }}/">{{ category }}</a>
                        {% endfor %}
                    </span>
                {% endif %}
            </div>
            <p class="excerpt">{{ post.excerpt | truncatewords: 50 }}</p>
            <a href="{{ post.url }}" class="read-more">Read More →</a>
        </article>
    {% endfor %}
</section>

<!-- Homepage Ad -->
<div class="ad-container">
  <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-xxxxxxxxxxxxxxxx"
     crossorigin="anonymous"></script>
  <ins class="adsbygoogle"
       style="display:block"
       data-ad-client="ca-pub-xxxxxxxxxxxxxxxx"
       data-ad-slot="xxxxxxxxxx"
       data-ad-format="auto"
       data-full-width-responsive="true"></ins>
  <script>
       (adsbygoogle = window.adsbygoogle || []).push({});
  </script>
</div>

<!-- Pagination would go here with jekyll-paginate -->
