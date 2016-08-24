---
layout: default
section: data_events
title: "Compare photo timestamp with current time"
description: "Demonstrates how to add quality control checks on photos by checking to see when they were taken."
category: section
tags:
  - media events
  - qa/qc
---

This example demonstrates how to compare the timestamp of an attached photo with the current time to alert the user that they may need to use a more recent photo.

```js
function checkTime(event) {
  if (event.value.timestamp) {
    var minutes = Math.round((new Date() - new Date(event.value.timestamp)) / 60000);
    if (minutes > 15) {
      ALERT('This photo was taken over 15 minutes ago. Please use a more recent photo.');
    }
  }
}

ON('load-record', function(event) {
  // loop through the photo fields
  DATANAMES('PhotoField').forEach(function(dataName) {
    ON('add-photo', dataName, checkTime);
  });
});
```
