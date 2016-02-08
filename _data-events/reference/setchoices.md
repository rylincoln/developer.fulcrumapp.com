---
layout: default
section: data_events
title: "SETCHOICES"
description: "Set the available choices for a choice field."
category: section
permalink: /data-events/reference/setchoices/
---

### Parameters

`field` String (__required__) - The data name for the field

`choices` Array,null (__required__) - The choices for the choice field

### Examples

{% highlight js %}
choices = ['Rain', 'Hail', 'Snow', 'Graupel']
SETCHOICES('weather_summary', choices)

// Sets the available choices of the weather summary field to an array of values
{% endhighlight %}


{% highlight js %}
choices = [
  ['Light Rain', 'light_rain'],
  ['Heavy Rain', 'heavy_rain']
]
SETCHOICES('weather_summary', choices)

// Sets the available choices of the weather summary field to an array of labels and values in [<label>, <value>] order
{% endhighlight %}


{% highlight js %}
choices = [
  { label: 'Light Rain', value: 'light_rain' },
  { label: 'Heavy Rain', value: 'heavy_rain' }
]
SETCHOICES('weather_summary', choices)

// Sets the available choices of the weather summary field to an array of labels and values in an object containing "label" and "value" keys
{% endhighlight %}


{% highlight js %}
SETCHOICES('weather_summary', null)

// Unsets any override previously set by SETCHOICES and uses the original setting from the form schema
{% endhighlight %}