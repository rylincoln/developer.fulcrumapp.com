---
layout: default
section: data_events
title: "Alert user to take horizontal media"
description: "These expressions check the orientation of photos and videos when they're added."
category: section
tags:
  - media events
  - alert
  - qa/qc
---

When photos are added to a field named `photos`, alert the user with a message if they're taken as portrait/vertical (where the width would be less than the height). With iOS devices, having the Portrait Orientation lock enabled will always produce photos with portrait aspect - it should be disabled if you're using this code in an attempt to collect records with landscape aspect photos.

Similarly with videos added to a field named `videos`, but check the `orientation` property.

```js
ON('add-photo', 'photos', function(event) {
  if (event.value.width < event.value.height) {
    if (PLATFORM() === 'iOS') {
      ALERT('Please delete this photo and retake it in landscape orientation. If you *did* take the photo in landscape orientation, check to ensure your device \'portrait orientation lock\' is OFF.');
    } else {
      ALERT('Please delete this photo and retake it in landscape orientation.');
    }
  }
});

ON('add-video', 'videos', function(event) {
  if (event.value.orientation == 90 || event.value.orientation == -90) {
    OPENURL('https://www.youtube.com/watch?v=Bt9zSfinwFA');
    ALERT('Please delete the video and retake it in landscape orientation.');
  }
});
```
