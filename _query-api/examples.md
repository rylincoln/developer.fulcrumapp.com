---
layout: default
section: query_api
order: 3
title: "Query API Examples"
description: "Query API expression examples."
category: section
---

<div class="row expression-examples">
  {% assign examples = site.query-api-examples | sort: "order" %}
  {% for node in examples %}
  <div class="col-xs-12 col-md-4">
    <div class="panel panel-default">
      <div class="panel-heading" style="min-height:55px">
        <h3 class="panel-title"><a href="{{ node.url }}">{{ node.title }}</a></h3>
      </div>
      <div class="panel-body" style="min-height:55px">
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
