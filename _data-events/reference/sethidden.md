---
layout: default
section: data_events
title: "SETHIDDEN"
description: "Set the visibility of a field."
category: section
permalink: /data-events/reference/sethidden/
---

### Parameters

`field` String (__required__) - The data name for the field

`hidden` boolean,null (__required__) - Boolean value representing whether the field should be hidden

### Examples

{% highlight js %}
SETHIDDEN('weather_summary', true)

// Hides the weather summary field
{% endhighlight %}


{% highlight js %}
SETHIDDEN('weather_summary', false)

// Shows the weather summary field
{% endhighlight %}


{% highlight js %}
SETHIDDEN('weather_summary', null)

// Unsets any override previously set by SETHIDDEN and uses the original setting from the form schema
{% endhighlight %}