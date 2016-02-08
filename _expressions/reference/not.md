---
layout: default
section: expressions
title: "NOT"
description: "Returns the opposite of a logical value - NOT(true) returns false; NOT(false) returns true."
category: section
permalink: /expressions/reference/not/
---

### Parameters

`value` Boolean (__required__) - The expression or value representing a logical value (`true` or `false`).

### Returns

Boolean

### Examples

{% highlight js %}
NOT(false)

// returns true
{% endhighlight %}


{% highlight js %}
NOT(5)

// returns false
{% endhighlight %}