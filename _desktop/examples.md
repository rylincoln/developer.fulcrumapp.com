---
layout: default
section: desktop
order: 3
title: "Fulcrum Desktop Examples"
description: "Examples of using the Fulcrum Desktop utility."
category: section
---

<div class="row expression-examples">
  {% assign examples = site.desktop-examples | sort: "order" %}
  {% for node in examples %}
  <div class="col-xs-12 col-md-4">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><a href="{{ node.url }}">{{ node.title }}</a></h3>
      </div>
      <div class="panel-body">
        {{ node.description }}
      </div>
      <div class="panel-footer">
        {% for tag in node.tags %}
          <span class="label label-primary">{{ tag }}</span>
        {% endfor %}
      </div>
    </div>
  </div>
  {% endfor %}
</div>
