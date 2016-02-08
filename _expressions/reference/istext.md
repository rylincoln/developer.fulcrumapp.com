---
layout: default
section: expressions
title: "ISTEXT"
description: "Checks whether a value is text."
category: section
permalink: /expressions/reference/istext/
---

### Parameters

`value` String (__required__) - The value to test as text.

### Returns

Boolean

### Examples

{% highlight js %}
ISTEXT("Text")

// returns true
{% endhighlight %}


{% highlight js %}
ISTEXT(4)

// returns false
{% endhighlight %}