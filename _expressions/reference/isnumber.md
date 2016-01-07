---
layout: default
section: expressions
title: "ISNUMBER"
description: "Tests whether a value is a number."
category: section
permalink: /expressions/reference/isnumber/
---

### Parameters

`value` Number (__required__) - The value to be verified as a number.

### Returns

Boolean

### Examples

{% highlight js %}
ISNUMBER(10)

// returns true
{% endhighlight %}


{% highlight js %}
ISNUMBER("Some text")

// returns false
{% endhighlight %}