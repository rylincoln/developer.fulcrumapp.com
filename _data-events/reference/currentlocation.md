---
layout: default
section: data_events
title: "CURRENTLOCATION"
description: "Returns a location object containing metadata about the user&#39;s current location. This location may be different than the record location."
category: section
permalink: /data-events/reference/currentlocation/
---

### Description

Returns the current device location as an object. This can be used for Q/A purposes or other custom processing logic. This is *not* always the same as the record location. For example, if editing an imported record or previously created record, the current location will be different.

### Parameters

No parameters

### Returns

Object - The current device location

```json
{
  "latitude": 27.822209699105304,
  "longitude": -82.69114932984364,
  "altitude": 15.030448913574219,
  "accuracy": 10,
  "course": 213,
  "speed": 3.4,
  "timestamp": 1462414931.9999695
}
```

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
