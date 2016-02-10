---
layout: default
section: data_events
title: "CURRENTLOCATION"
description: "Returns a location object containing metadata about the user&#39;s current location. This location may be different than the record location."
category: section
permalink: /data-events/reference/currentlocation/
---

### Parameters

No parameters

### Examples

```js
location = CURRENTLOCATION()

if (!location) {
  // location could not be determined.
} else {
  location.latitude  // 35.6443171
  location.longitude // -80.8984504
  location.altitude  // 213 - meters above sea level. Negative values indicate below sea level.
  location.accuracy  // 5 - meters, the accuracy of the latitude and longitude values
  location.speed     // 3.4 - meters per second
  location.course    // 213 - degrees from due north. 0-359, negative values or `null` indicate invalid values.
  location.timestamp // 1454015950.013456 - epoch time, seconds
}
```