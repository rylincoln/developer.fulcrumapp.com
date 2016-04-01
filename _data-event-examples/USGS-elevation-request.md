---
layout: default
section: data_events
title: "Grabbing USGS elevation information"
description: "Determining the elevation of the are you are collecting data in"
category: section
---

Similar to automating weather collection, data events allow you to tap into any API that supports point coordinates.  This example uses the USGS national map information to gather the elevation at the point you collect data in.

It assumes you have a field called `elevation`.

``` js
function getElev() {
  options = {
    url: 'http://nationalmap.gov/epqs/pqs.php?x=' + LONGITUDE() + '&y=' + LATITUDE() + '&units=Feet&output=json'
  };

  REQUEST(options, function (error, response, body) {
    if (error) {
      ALERT('Error with request: ' + error);
    } else {
      elevation = JSON.parse(body);
      SETVALUE('elevation', elevation.USGS_Elevation_Point_Query_Service.Elevation_Query.Elevation);
    }
  });
}

ON('change-geometry', getElev);
```
