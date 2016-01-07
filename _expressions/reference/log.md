---
layout: default
section: expressions
title: "LOG"
description: "Returns the the logarithm of a number given a base."
category: section
permalink: /expressions/reference/log/
---

### Parameters

`value` Number (__required__) - The value for which to calculate the logarithm given `base`.

`base` Number (optional)  [default = 10] - The base to use for the logarithm calculation.

### Returns

Number

### Examples

{% highlight js %}
LOG(100, 5)

// returns 2.8613531161467867
{% endhighlight %}


{% highlight js %}
LOG(100)

// returns 2
{% endhighlight %}