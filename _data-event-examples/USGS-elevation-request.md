---
layout: default
section: data_events
title: "Get USGS elevation information"
description: "Determine the elevation of the location you are collecting data."
category: section
---

Similar to automating weather collection, data events allow you to tap into any API that supports point coordinates.  This example uses the USGS National Map information to determine the elevation at the point you are collecting data.

It assumes you have a field called `elevation`.

``` js
function getElev() {
  options = {
    url: 'http://nationalmap.gov/epqs/pqs.php?x=' + LONGITUDE() + '&y=' + LATITUDE() + '&units=Feet&output=json'
  };

  REQUEST(options, function(error, response, body) {
    if (error) {
      ALERT('Error with request: ' + INSPECT(error));
    } else {
      elevation = JSON.parse(body);
      SETVALUE('elevation', elevation.USGS_Elevation_Point_Query_Service.Elevation_Query.Elevation);
    }
  });
}

ON('change-geometry', getElev);
```
