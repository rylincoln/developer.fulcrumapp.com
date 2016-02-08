---
layout: default
section: expressions
title: "TYPEOF"
description: "Returns the type of a value"
category: section
permalink: /expressions/reference/typeof/
---

### Parameters

`value` * (__required__) - A value to get the type of

### Returns

String - The type of the value

### Examples

{% highlight js %}
TYPEOF('test')

// returns string
{% endhighlight %}


{% highlight js %}
TYPEOF(1)

// returns number
{% endhighlight %}


{% highlight js %}
TYPEOF(true)

// returns boolean
{% endhighlight %}


{% highlight js %}
TYPEOF(null)

// returns null
{% endhighlight %}


{% highlight js %}
TYPEOF(new Date)

// returns date
{% endhighlight %}


{% highlight js %}
TYPEOF({ name: 'Test' })

// returns object
{% endhighlight %}


{% highlight js %}
TYPEOF([1, 2, 3])

// returns array
{% endhighlight %}