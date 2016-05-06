---
layout: default
section: data_events
title: "Display the current GPS info on the form"
description: "Use this example to display the current GPS info on your form"
category: section
---

This example shows how you can display the current GPS data within your form using the [CURRENTLOCATION](/data-events/reference/currentlocation/) and [SETLABEL](/data-events/reference/setlabel/) functions.

<img src="https://cldup.com/U02zq8FPua.gif" alt="GPS Info Example" style="float: right; margin-left: 40px;" />

```js
ON('load-record', function(event) {
  var updateLocationInfo = function() {
    var location = CURRENTLOCATION();

    if (!location) {
      SETLABEL('gps_info', 'No Location Available');
      return;
    }

    var message = [
      'Latitude: ' + location.latitude,
      'Longitude: ' + location.longitude,
      'Accuracy: ' + location.accuracy,
      'Altitude: ' + location.altitude,
      'Course: ' + location.course,
      'Speed: ' + location.speed,
      'Time: ' + new Date(location.timestamp * 1000).toLocaleString()
    ].join('\n');

    SETLABEL('gps_info', message);
  };

  updateLocationInfo();

  SETINTERVAL(updateLocationInfo, 3000);
});
```



