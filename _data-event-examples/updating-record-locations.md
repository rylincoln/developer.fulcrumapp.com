---
layout: default
section: data_events
title: "Intelligently Updating Record Locations"
description: "Demonstrates how to intelligently update locations for imported records."
category: section
---

This example demonstrates how to update the location of a record when it meets the following criteria:

- It is saved on mobile
- It was not originally captured by GPS
- Your current location is less than 100 meters from record location

This is useful for automatically updating the location of records which may have been imported with inaccurate coordinates. This can add value to your datasets without any additional effort in the field.

```js
var currentLatitude, currentLongitude;

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
  if (unit == 'K') {
    dist = dist * 1.609344;
  }
  if (unit == 'N') {
    dist = dist * 0.8684;
  }
  return dist;
}

ON('load-record', function(event) {
  var updateLocationInfo = function() {
    // get the current device location
    var location = CURRENTLOCATION();
    // if there is no location, stop
    if (!location) {
      return;
    }
    // set current location values
    currentLatitude = location.latitude;
    currentLongitude = location.longitude;
  };
  // go ahead and update it now...
  updateLocationInfo();
  // ... and every 3 seconds
  SETINTERVAL(updateLocationInfo, 3000);
});

ON('save-record', function(event) {
  // check to see if initial record location was not captured by GPS (imported or created on the web)
  var recordAccuracy = this.recordHorizontalAccuracy;
  if (!recordAccuracy && currentLatitude && currentLongitude) {
    var kilometers = findDistance(currentLatitude, currentLongitude, LATITUDE(), LONGITUDE(), 'K');
    var meters = Math.round(kilometers * 1000);
    // if record was not captured by GPS and current location is less than 100 meters from record location, update with current location
    if (meters < 100) {
      SETLOCATION(currentLatitude, currentLongitude);
    }
  }
});
```
