---
layout: default
section: data_events
title: "Validate record is within geographic area"
description: "Use this to ensure a record's location is within a geographic area before saving."
category: section
tags:
  - validation
  - geofencing
---

This example uses the [INVALID](/data-events/reference/invalid), [LATITUDE](/expressions/reference/latitude), and [LONGITUDE](/expressions/reference/longitude) functions to keep records from being saved when their geometry isn't within the state of Colorado, a conveniently rectangular state.

```js
function validateLocation() {
  // The rough bounds of Colorado
  minLatitude = 36.985;
  maxLatitude = 40.979;
  minLongitude = -109.028;
  maxLongitude = -102.063;

  // The latitude and longitude of the record
  lat = LATITUDE();
  lng = LONGITUDE();

  if (!(lat <= maxLatitude && lat >= minLatitude && lng <= maxLongitude && lng >= minLongitude)) {
    INVALID("It looks like this record isn't within the State of Colorado. Please adjust the record's location to be within Colorado.");
  }
}

ON('validate-record', validateLocation);
```
