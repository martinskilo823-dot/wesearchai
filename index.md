---
layout: default
title: WeSearchAI - Global News, Football, Health & Politics
---

<section class="hero">
    <h1>{{ site.title }}</h1>
    <p>{{ site.description }}</p>
    <p class="tagline">Independent reporting, concise analysis, and practical insights across technology, health, sport and global affairs.</p>
</section>

<section class="about-site">
    <h2>About WeSearchAI</h2>
    <p>WeSearchAI publishes concise, source-driven journalism and analysis to help readers make sense of rapidly changing topics: from AI and energy transitions to public health and major sporting events. Our editorial team combines primary reporting, expert interviews, and synthesis of authoritative sources to produce readable articles that inform decisions and spark conversation.</p>
    <p>We prioritise evidence, transparency, and clear attribution. Read our <a href="/terms/">Terms of Service</a> and <a href="/privacy/">Privacy Policy</a> for details about our editorial standards and how we handle data. For corrections, pitches, or media enquiries see our <a href="/contact/">Contact</a> page.</p>

    <h3>Featured categories</h3>
    <ul class="featured-categories">
        <li><a href="/category/technology/">Technology</a> — Coverage of AI, cybersecurity, startups, and the business of innovation.</li>
        <li><a href="/category/health/">Health</a> — Evidence-based reporting on clinical advances, public health, and wellbeing.</li>
        <li><a href="/category/sports/">Sports</a> — Match reports, analytics, and training science with a focus on football.</li>
        <li><a href="/category/politics/">Politics</a> — Policy, governance, and electoral coverage from a global perspective.</li>
        <li><a href="/category/science/">Science</a> — Summaries of new research and trustworthy context for technical breakthroughs.</li>
    </ul>

    <p>Looking to contribute? We welcome well-researched pitches from experienced writers and experts — see <a href="/contact/">Contact</a> for submission guidelines.</p>
</section>

<section class="trust-and-subscribe">
    <h3>Why trust our reporting</h3>
    <p>Our writers follow a clear sourcing policy: we cite primary studies, expert statements, and official reports where available, and we correct mistakes transparently. Many of our pieces include links to source documents and data so readers can verify claims and explore further. Author bios on each story provide background on the reporter or contributor, including relevant expertise and previous work.</p>

    <h3>Stay informed</h3>
    <p>Sign up for our occasional newsletter for concise weekly briefings and highlights across categories. Subscribe from the footer or visit our <a href="/contact/">Contact</a> page for publisher updates.</p>
</section>

<div class="site-ad" role="complementary" aria-label="Advertisement">
    <div class="site-ad__inner">
        <div class="site-ad__label">Advertisement</div>
        <div class="ad-container" style="margin: 0 auto; max-width: 980px; text-align: center;">
            <ins class="adsbygoogle"
                 style="display:block"
+                data-ad-client="ca-pub-4142907435370595"
                data-ad-slot="7985268934"
                data-ad-format="auto"
                data-full-width-responsive="true"></ins>
            <script>
                 (adsbygoogle = window.adsbygoogle || []).push({});
            </script>
        </div>
    </div>
</div>

<section class="posts-list">
    <h2>Latest Posts</h2>
    {% for post in site.posts limit:10 %}
        <article class="post-card">
            <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
            <div class="post-meta">
                <time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time>
                {% if post.categories %}
                    <span class="post-categories">
                        {% for category in post.categories limit:1 %}
                            <a href="{{ '/category/' | append: category | downcase | replace: ' ', '-' | append: '/' | relative_url }}">{{ category }}</a>
                        {% endfor %}
                    </span>
                {% endif %}
            </div>
            <p class="excerpt">{{ post.excerpt | truncatewords: 50 }}</p>
            <a href="{{ post.url | relative_url }}" class="read-more">Read More →</a>
        </article>
    {% endfor %}
</section>

<!-- Pagination would go here with jekyll-paginate -->
