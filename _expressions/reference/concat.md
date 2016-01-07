---
layout: default
section: expressions
title: "CONCAT"
description: "Returns the concatenation of multiple values. Alias for CONCATENATE()"
category: section
permalink: /expressions/reference/concat/
---

### Parameters

`var_args_values` String (__required__) - Strings to append in sequence.

### Returns

String

### Examples

{% highlight js %}
CONCAT("This ", "is ", "a ", "sentence.")

// returns This is a sentence.
{% endhighlight %}


{% highlight js %}
CONCAT(42, 31, 1)

// returns 42311
{% endhighlight %}


{% highlight js %}
CONCAT("Age ", "is ", 42)

// returns Age is 42
{% endhighlight %}