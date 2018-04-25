---
layout: post-index
title: CompArch Blog Posts:
excerpt: "A blog about computational archaeology..."
---

*Posts about Computational Archaeology, Complexity Theory, GIS, Agent Based Modeling, and more...*

<br>

{% for post in site.posts limit:25 %}
<article>
{% if post.link %}
<h2 class="link-post"><a href="{{ site.url }}{{ post.url }}" title="{{ post.title }}">{{ post.title }}</a> <a href="{{ post.link }}" target="_blank" title="{{ post.title }}"><i class="fa fa-link"></i></h2>
{% else %}
<h2><a href="{{ site.url }}{{ post.url }}" title="{{ post.title }}">{{ post.title }}</a></h2>
<p>{{ post.excerpt | strip_html | truncate: 160 }}</p>
{% endif %}
</article>
{% endfor %}