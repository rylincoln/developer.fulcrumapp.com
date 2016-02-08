---
layout: default
section: expressions
title: "POWER"
description: "Returns a number raised to a power."
category: section
permalink: /expressions/reference/power/
---

### Parameters

`base` Number (__required__) - The number to be raised to the `exponent` power.

`exponent` Number (__required__) - The exponent to raise `base` to.

### Returns

Number

### Examples

{% highlight js %}
POWER(5, 8)

// returns 390625
{% endhighlight %}


{% highlight js %}
POWER(10, 0.5)

// returns 3.1622776601683795
{% endhighlight %}