---
layout: default
section: data_events
title: "SETMINLENGTH"
description: "Set the minimum length for a field."
category: section
permalink: /data-events/reference/setminlength/
---

### Parameters

`field` String (__required__) - The data name for the field

`length` number,null (__required__) - The minimum length of the field

### Examples

{% highlight js %}
SETMINLENGTH('weather_summary', 25)

// Sets the minimum length of the weather summary field to 25
{% endhighlight %}


{% highlight js %}
SETMINLENGTH('weather_summary', null)

// Unsets any override previously set by SETMINLENGTH and uses the original setting from the form schema
{% endhighlight %}