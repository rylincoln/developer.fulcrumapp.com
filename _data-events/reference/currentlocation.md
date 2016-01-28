---
layout: default
section: data_events
title: "CURRENTLOCATION"
description: "Returns a location object containing metadata about the user&#39;s current location, not the record&#39;s location."
category: section
permalink: /data-events/reference/currentlocation/
---

### Parameters

No parameters

### Examples

{% highlight js %}
location = CURRENTLOCATION()

if (!location) {
  // location could not be determined.
} else {
  location.latitude  // 35.6443171
  location.longitude // -80.8984504
  location.altitude  // 213 - meters
  location.accuracy  // 5 - meters
  location.speed     // 3.4 - meters per second
  location.course    // 213
  location.timestamp // 1454015950.013456 - ephoch time, seconds
}
{% endhighlight %}