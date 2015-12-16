---
layout: default
section: expressions
order: 3
title: "Examples"
description: "Calculation field expression example library."
category: section
---

<ul>
{% assign examples = site.expression-examples | sort: "order" %}
{% for node in examples %}
<li>
  <a href="{{ node.url }}">{{ node.title }}</a>
</li>
{% endfor %}
</ul>
