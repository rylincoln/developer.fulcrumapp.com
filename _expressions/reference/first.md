---
layout: default
section: expressions
title: "FIRST"
description: "Returns the first N items from an array or string"
category: section
permalink: /expressions/reference/first/
---

### Parameters

`array` Array (__required__) - an array object

`count` Number (optional)  [default = 1] - The number of items to return

### Returns

Object

### Examples

{% highlight js %}
FIRST([1, 2, 3])

// returns 1
{% endhighlight %}


{% highlight js %}
FIRST(['a', 'b', 'c'], 2)

// returns [a,b]
{% endhighlight %}


{% highlight js %}
FIRST('abc')

// returns a
{% endhighlight %}


{% highlight js %}
FIRST('abc', 2)

// returns [a,b]
{% endhighlight %}