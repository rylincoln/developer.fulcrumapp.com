---
layout: default
section: expressions
title: "ISODD"
description: "Checks whether the provided value is an odd number."
category: section
permalink: /expressions/reference/isodd/
---

### Parameters

`value` Number (__required__) - The value to be verified as odd.

### Returns

Boolean

### Examples

{% highlight js %}
ISODD(4)

// returns false
{% endhighlight %}


{% highlight js %}
ISODD(5)

// returns true
{% endhighlight %}


{% highlight js %}
ISODD(3.12)

// returns true
{% endhighlight %}