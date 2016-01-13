---
layout: default
section: data_events
title: "ON"
description: "Attaches an event handler that listens for record, repeatable, or field events."
category: section
permalink: /data-events/reference/on/
---

### Parameters

`event` string (__required__) - The event name

`callback` function (__required__) - The function to call when the specified event is triggered

### Examples

{% highlight js %}
var callback = function () {
  if (!(LATITUDE() >= 40 && LATITUDE() <= 41)) {
    INVALID('Latitude must be between 40 and 41.')
  }
}

ON('validate-record', callback)

// Listens for 'save-record' events and stops the record from being saved unless it's within a latitude range
{% endhighlight %}


{% highlight js %}
var callback = function () {
  // Do something with the new $weather_summary values
}

ON('change', 'weather_summary', callback)

// Listens for changes to the weather summary field and executes callback
{% endhighlight %}


{% highlight js %}
var callback = function () {
  // Do something with the location via LATITUDE() AND LONGITUDE() values
}

ON('change-geometry', callback)

// Listens for changes to a record's geometry (location) and executes callback
{% endhighlight %}


{% highlight js %}
var callback = function () {
  // Do something with the repeatable location via LATITUDE() AND LONGITUDE() values
}

ON('change-geometry', 'repeatable_item', callback)

// Listens for changes to a repeatable item's geometry and executes callback
{% endhighlight %}