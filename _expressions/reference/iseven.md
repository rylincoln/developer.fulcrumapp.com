---
layout: default
section: expressions
title: "ISEVEN"
description: "Checks whether the provided value is an even number."
category: section
permalink: /expressions/reference/iseven/
---

### Parameters

`value` Number (__required__) - The value to be verified as even.

### Returns

Boolean

### Examples

{% highlight js %}
ISEVEN(4)

// returns true
{% endhighlight %}


{% highlight js %}
ISEVEN(5)

// returns false
{% endhighlight %}


{% highlight js %}
ISEVEN(4.12)

// returns true
{% endhighlight %}