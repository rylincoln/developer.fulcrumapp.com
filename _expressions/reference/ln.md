---
layout: default
section: expressions
title: "LN"
description: "Returns the the logarithm of a number, base e (Euler&#39;s number)."
category: section
permalink: /expressions/reference/ln/
---

### Parameters

`value` Number (__required__) - The value for which to calculate the logarithm, base `e`. Must be a positive number.

### Returns

Number

### Examples

{% highlight js %}
LN(5)

// returns 1.6094379124341003
{% endhighlight %}


{% highlight js %}
LN("Test")

// returns NaN
{% endhighlight %}