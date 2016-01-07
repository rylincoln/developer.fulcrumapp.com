---
layout: default
section: expressions
title: "CONCATENATE"
description: "Returns the concatenation of multiple values."
category: section
permalink: /expressions/reference/concatenate/
---

### Parameters

`var_args_values` String (__required__) - Strings to append in sequence.

### Returns

String

### Examples

{% highlight js %}
CONCATENATE("This ", "is ", "a ", "sentence.")

// returns This is a sentence.
{% endhighlight %}


{% highlight js %}
CONCATENATE(42, 31, 1)

// returns 42311
{% endhighlight %}


{% highlight js %}
CONCATENATE("Age ", "is ", 42)

// returns Age is 42
{% endhighlight %}