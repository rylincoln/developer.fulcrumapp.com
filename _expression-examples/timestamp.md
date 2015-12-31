---
layout: default
section: expressions
title: "Generate a full timestamp"
description: "Use this in a calculation field to add a full timestamp for when the record was initially generated or edited, automatically."
category: section
---

Resulting format looks like: `2015-11-23 16:36:14`.

{% highlight  js %}
var d = new Date();
var ts = d.getFullYear() + '-' + (d.getMonth() + 1) + '-' + ((d.getDate() < 10) ? '0' : '') + d.getDate() + ' ' + d.getHours() + ':' + d.getMinutes() + ':' + d.getSeconds();
SETRESULT(ts);
{% endhighlight %}
