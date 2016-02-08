---
layout: default
section: expressions
title: "MINA"
description: "Returns the minimum numeric value in a given set of values."
category: section
permalink: /expressions/reference/mina/
---

### Parameters

`var_args_values` Number (__required__) - Values in which to find the minumum numeric value.

### Returns

Number

### Examples

{% highlight js %}
MINA([3, 4, -6, '10'])

// returns -6
{% endhighlight %}