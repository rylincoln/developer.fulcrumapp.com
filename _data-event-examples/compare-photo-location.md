---
layout: default
section: data_events
title: "Compare photo location with record location"
description: "Demonstrates how to add quality control checks on photos by checking to see if they were taken in the same geographic area as the record."
category: section
---

This example demonstrates how to compare the geotagged location of an attached photo with the location of the record to alert the user if there may be an issue.

```js
// source: https://www.geodatasource.com/developers/javascript
function findDistance(lat1, lon1, lat2, lon2, unit) {
  var radlat1 = Math.PI * lat1 / 180;
  var radlat2 = Math.PI * lat2 / 180;
  var theta = lon1 - lon2;
  var radtheta = Math.PI * theta / 180;
  var dist = Math.sin(radlat1) * Math.sin(radlat2) + Math.cos(radlat1) * Math.cos(radlat2) * Math.cos(radtheta);
  dist = Math.acos(dist);
  dist = dist * 180 / Math.PI;
  dist = dist * 60 * 1.1515;
  if (unit == "K") {
    dist = dist * 1.609344;
  }
  if (unit == "N") {
    dist = dist * 0.8684;
  }
  return dist;
}

function validateDistance(event) {
  if (event.value.latitude && event.value.longitude) {
    var kilometers = findDistance(event.value.latitude, event.value.longitude, LATITUDE(), LONGITUDE(), 'K');
    var meters = Math.round(kilometers * 1000);
    if (meters > 20) {
      ALERT('This photo is over 20 meters from the record location. (' + meters + ' meters)');
    }
  }
}

ON('load-record', function(event) {
  var elements = this.elementsByDataName;
  // loop through the form elements
  for (var dataName in elements) {
    // we only care about photo fields
    if (elements[dataName].type == 'PhotoField') {
      // listen for add-photo event
      ON('add-photo', dataName, validateDistance);
    }
  }
});
```
