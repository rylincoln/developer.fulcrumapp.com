---
layout: default
section: expressions
title: "TIMEADD"
description: "Adds an amount of time to a given time"
category: section
permalink: /expressions/reference/timeadd/
---

### Parameters

`startTimeField` String (__required__) - The time field containing the start time

`amount` Number (__required__) - The amount of time to add to the given time (number of minutes or hours)

`format` String (optional)  [default = 'hours'] - The format of the amount. Either `hours` (default) or `minutes`.

### Returns

String - the new time value

### Examples

{% highlight js %}
TIMEADD('09:00', 8)

// returns 17:00
{% endhighlight %}


{% highlight js %}
TIMEADD('17:00', -8)

// returns 09:00
{% endhighlight %}


{% highlight js %}
TIMEADD('09:00', 48)

// returns 09:00
{% endhighlight %}


{% highlight js %}
TIMEADD('16:00', 1.5)

// returns 17:30
{% endhighlight %}


{% highlight js %}
TIMEADD('16:00', 90, 'minutes')

// returns 17:30
{% endhighlight %}


{% highlight js %}
TIMEADD('16:00', -90, 'minutes')

// returns 14:30
{% endhighlight %}