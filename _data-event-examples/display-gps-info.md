---
layout: default
section: data_events
title: "Display the current GPS info on the form"
description: "Use this example to display the current GPS info on your form"
category: section
tags:
  - current location
  - gps
---

This example shows how you can display the current GPS data within your form using the [CURRENTLOCATION](/data-events/reference/currentlocation/) and [SETLABEL](/data-events/reference/setlabel/) functions. For the below example to work, add a Label field and set its label to `GPS Info` so that we can reference it in the Data Events script as `gps_info`.

<img src="https://cldup.com/U02zq8FPua.gif" alt="GPS Info Example" style="float: right; margin-left: 40px;" />

```js
ON('load-record', function(event) {
  var updateLocationInfo = function() {
    // get the current device location
    var location = CURRENTLOCATION();

    // if there is no location, display a special message
    if (!location) {
      SETLABEL('gps_info', 'No Location Available');
      return;
    }

    // format the display of the location data
    var message = [
      'Latitude: ' + location.latitude,
      'Longitude: ' + location.longitude,
      'Accuracy: ' + location.accuracy,
      'Altitude: ' + location.altitude,
      'Course: ' + location.course,
      'Speed: ' + location.speed,
      'Time: ' + new Date(location.timestamp * 1000).toLocaleString()
    ].join('\n');

    // set the label property of the label on the form
    SETLABEL('gps_info', message);
  };

  // go ahead and update it now...
  updateLocationInfo();

  // ... and every 3 seconds
  SETINTERVAL(updateLocationInfo, 3000);
});
```
