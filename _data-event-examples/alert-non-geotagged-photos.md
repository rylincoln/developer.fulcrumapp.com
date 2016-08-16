---
layout: default
section: data_events
title: "Alert user if photo is not geotagged"
description: "Use this to alert the user if a photo does not contain latitude or longitude metadata."
category: section
tags:
  - media events
  - qa/qc
---

This example loops through all the fields in the app and adds an [add-photo](/data-events/intro/#media-events) event to look for location metadata. If `latitude` and `longitude` are missing or are set to 0, it will alert the user to enable geotagging on their device.

```js
function validateGeotags(event) {
  if (!event.value.latitude || !event.value.longitude) {
    INVALID('This photo is NOT geotagged. Enable photo geotagging on your device and try again.');
  }
}

ON('load-record', function (event) {
  DATANAMES('PhotoField').forEach(function(dataName) {
    ON('add-photo', dataName, validateGeotags);
  });
});
```
