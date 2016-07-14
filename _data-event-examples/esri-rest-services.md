---
layout: default
section: data_events
title: "Query Esri REST Services"
description: "How to query an Esri ArcGIS Server or ArcGIS Online REST Service using Data Events in Fulcrum."
category: section
---

This example passes your Fulcrum latitude and longitude as a point parameter in an Intersect query against data hosted on an Esri REST Service. Three text fields are required in the app, for the particular properties we're interested in here.

<img src="../media/flood-info.gif" alt="USGS Elevation Query" style="float: right; margin-left: 40px;" />

``` js
function getFloodInfo() {

  var options = {
    url: 'https://hazards.fema.gov/gis/nfhl/rest/services/public/NFHLWMS/MapServer/28/query?where=&text=&objectIds=&time=&geometry=' + LONGITUDE() + ',' + LATITUDE() + '&geometryType=esriGeometryPoint&inSR=EPSG%3A4326&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=false&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&returnTrueCurves=false&resultOffset=&resultRecordCount=&f=pjson'
  };

  REQUEST(options, function (err, res, body) {
    if (err) {
      ALERT('Error: ' + err.message);
    } else {
      var zone = JSON.parse(body);
      if (zone && zone.features[0]) {
        SETVALUE('flood_zone', zone.features[0].attributes['FLD_ZONE']);
        SETVALUE('flood_zone_subtype', zone.features[0].attributes['ZONE_SUBTY']);
        SETVALUE('dfirm_id', zone.features[0].attributes['DFIRM_ID']);
      } else {
        SETVALUE('flood_zone', 'NA');
        SETVALUE('flood_zone_subtype', 'NA');
        SETVALUE('dfirm_id', 'NA');
      }
    }
  });
}

ON('change-geometry', getFloodInfo);
```
