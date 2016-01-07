---
layout: default
section: expressions
title: "MAXA"
description: "Returns the maximum numeric value in a given set of values."
category: section
permalink: /expressions/reference/maxa/
---

### Parameters

`var_args_values` Number (__required__) - Values in which to find the maximum numeric value.

### Returns

Number

### Examples

{% highlight js %}
MAXA([3, 4, -6, '10'])

// returns 10
{% endhighlight %}