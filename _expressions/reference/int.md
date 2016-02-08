---
layout: default
section: expressions
title: "INT"
description: "Rounds a number down to the nearest integer that is less than or equal to it."
category: section
permalink: /expressions/reference/int/
---

### Parameters

`value` Number (__required__) - Value to round down to the nearest integer.

### Returns

Number

### Examples

{% highlight js %}
INT(34.24)

// returns 34
{% endhighlight %}


{% highlight js %}
INT(-10.49)

// returns -11
{% endhighlight %}