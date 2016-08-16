---
layout: default
section: data_events
title: "Get USGS elevation information"
description: "Determine the elevation of the location you are collecting data."
category: section
tags:
  - request
  - set value
---

Similar to automating weather collection, data events allow you to tap into any API that supports point coordinates.  This example uses the USGS National Map information to determine the elevation at the point you are collecting data. It assumes you have a numeric (decimal) field called `usgs_elevation`.

<img src="../media/fulcrum-elev-data-event.gif" alt="USGS Elevation Query" style="float: right; margin-left: 40px;" />

``` js
function getElevation() {
  var usgsURL = 'http://nationalmap.gov/epqs/pqs.php?x=' + LONGITUDE() + '&y=' + LATITUDE() + '&units=Feet&output=json';

  // use cors/https proxy for web requests
  var mobile = ['iOS', 'Android'];
  if (!CONTAINS(mobile, PLATFORM()) {
    usgsURL = 'https://crossorigin.me/' + usgsURL;
  }

  var options = {
    url: usgsURL
  };

  REQUEST(options, function(error, response, body) {
    if (error) {
      ALERT('Error with request: ' + INSPECT(error));
    } else {
      elevation = JSON.parse(body);
      SETVALUE('usgs_elevation', elevation.USGS_Elevation_Point_Query_Service.Elevation_Query.Elevation);
    }
  });
}

ON('change-geometry', getElevation);
```

Alternatively, altitude can be determined (as shown in the .gif animation as 'Device Elevation') with a Calculation Expression as shown in [this example](http://developer.fulcrumapp.com/expressions/examples/altitude/).
