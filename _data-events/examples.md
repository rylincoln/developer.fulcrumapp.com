---
layout: default
section: data_events
order: 3
title: "Examples"
description: "Data event expression examples."
category: section
---

<div class="row">
  {% assign examples = site.data-event-examples | sort: "order" %}
  {% for node in examples %}
  <div class="col-xs-12 col-md-4">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><a href="{{ node.url }}">{{ node.title }}</a></h3>
      </div>
      <div class="panel-body">
        {{ node.description }}
      </div>
    </div>
  </div>
  {% endfor %}
</div>
