---
layout: default
section: expressions
title: "ISLOGICAL"
description: "Checks whether a value is true or false."
category: section
permalink: /expressions/reference/islogical/
---

### Parameters

`value` String (__required__) - The value to be verified as `true` or `false`.

### Returns

Boolean

### Examples

{% highlight js %}
ISLOGICAL(true)

// returns true
{% endhighlight %}


{% highlight js %}
ISLOGICAL("Text")

// returns false
{% endhighlight %}