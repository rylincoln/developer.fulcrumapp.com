---
layout: default
section: data_events
title: "Alert user if photo is not geotagged"
description: "Use this to alert the user if a photo does not contain latitude or longitude metadata."
category: section
---

This example loops through all the fields in the app and adds an [add-photo](/data-events/intro/#media-events) event to look for location metadata. If `latitude` and `longitude` are missing or are set to 0, it will alert the user to enable geotagging on their device.

```js
ON('load-record', function (event) {
  var elements = this.elementsByDataName;
  for (var dataName in elements) {
    if (elements[dataName].type == 'PhotoField') {
      ON('add-photo', dataName, function (event) {
        if (!event.value.latitude || !event.value.latitude || event.value.latitude == 0 || event.value.latitude == 0) {
          ALERT('This photo is NOT geotagged. Please remove this photo, enable photo geotagging on your device and try again.');
        }
      })
    }
  }
})
```
