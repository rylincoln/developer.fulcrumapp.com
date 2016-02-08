---
layout: default
section: expressions
title: "EXISTS"
description: "Tests whether a value exists"
category: section
permalink: /expressions/reference/exists/
---

### Parameters

`var_args_values` Object (__required__) - The value(s) to check for existence

### Returns

Boolean

### Examples

{% highlight js %}
EXISTS(1)

// returns true
{% endhighlight %}


{% highlight js %}
EXISTS(null)

// returns false
{% endhighlight %}


{% highlight js %}
EXISTS([])

// returns false
{% endhighlight %}