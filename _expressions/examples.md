---
layout: default
section: expressions
order: 3
title: "Examples"
description: "Calculation field expression examples."
category: section
---

{% assign examples = site.expression-examples | sort: "order" %}
{% for node in examples %}
<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title"><a href="{{ node.url }}">{{ node.title }}</a></h3>
  </div>
  <div class="panel-body">
    {{ node.description }}
  </div>
</div>
{% endfor %}
