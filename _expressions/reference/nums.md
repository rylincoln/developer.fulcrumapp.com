---
layout: default
section: expressions
title: "NUMS"
description: "Converts multiple parameters to an array of numbers"
category: section
permalink: /expressions/reference/nums/
---

### Parameters

`var_args_values` * (__required__) - the values to convert to numbers

### Returns

Number

### Examples

{% highlight js %}
NUMS('1' ,'2', '3')

// returns [1,2,3]
{% endhighlight %}


{% highlight js %}
NUMS('1' ,'2', 'a')

// returns [1,2,NaN]
{% endhighlight %}