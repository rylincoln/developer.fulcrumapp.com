---
layout: default
section: data_events
title: "Opening Google Maps & Street View"
description: "Demonstrates how to open Google Maps or Street View at your record location on both mobile and web."
category: section
tags:
  - openurl
  - street view
---

[Google Street View](https://www.google.com/maps/streetview/) provides panoramic views from positions along many streets in the world. This example assumes you have a Hyperlink field with a data name of `show_street_view` and shows how you can script a click event to directly open Street View at your record location when the button is tapped.

<img src="../media/fulcrum-street-view.gif" alt="Fulcrum + Street View Example" style="float: right; margin-left: 40px;" />

```js
ON('click', 'show_street_view', function (event) {
  if (LATITUDE() && LONGITUDE()) {
    OPENURL('https://maps.google.com/maps?layer=c&cbll=' + LATITUDE() + ',' + LONGITUDE());
  } else {
    ALERT('No location provided!', 'A location is required to show Street View.')
  }
});
```

Note that the Google Maps app must be installed for this to work on mobile.

Alternatively if you would like to use regular Google Maps for routing to a record location, this example can be used with a Hyperlink field having a data name `open_google_maps` and uses a click event to directly open the Google Maps app at your record location when the button is tapped.

```js
ON('click', 'open_google_maps', function (event) {
  if (LATITUDE() && LONGITUDE()) {
    OPENURL('https://maps.google.com/?q=' + LATITUDE() + ',' + LONGITUDE());
  } else {
    ALERT('No location provided!', 'A location is required to show Google Maps.')
  }
});
```
