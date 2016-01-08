---
layout: default
section: data_events
title: "SETLABEL"
description: "Set the label of a field."
category: section
permalink: /data-events/reference/setlabel/
---

### Parameters

`field` String (__required__) - The data name for the field

`hidden` String,null (__required__) - The text for the field label

### Examples

{% highlight js %}
SETLABEL('weather_summary', 'Weather Report')

// Sets the field's label to 'Weather Report'
{% endhighlight %}


{% highlight js %}
SETLABEL('weather_summary', null)

// Unsets any override previously set by SETLABEL and uses the original setting from the form schema
{% endhighlight %}