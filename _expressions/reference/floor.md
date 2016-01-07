---
layout: default
section: expressions
title: "FLOOR"
description: "Rounds a number down to the nearest integer multiple of specified significance."
category: section
permalink: /expressions/reference/floor/
---

### Parameters

`value` Number (__required__) - Number to round down.

`significance` Number (__required__) - The number to whose multiples `value` will be rounded.

### Returns

Number

### Examples

{% highlight js %}
FLOOR(126.25, 1)

// returns 126
{% endhighlight %}


{% highlight js %}
FLOOR(126.25, 10)

// returns 120
{% endhighlight %}