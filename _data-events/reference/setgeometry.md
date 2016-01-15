---
layout: default
section: data_events
title: "SETGEOMETRY"
description: "Set the geometry of a record."
category: section
permalink: /data-events/reference/setgeometry/
---

### Parameters

`geojson` Object (__required__) - The GeoJSON representation of the geometry - currently only 'Point' is supported

### Examples

{% highlight js %}
SETGEOMETRY({ type: 'Point', coordinates: [-100, 40] })

// Sets the geometry of a record
{% endhighlight %}