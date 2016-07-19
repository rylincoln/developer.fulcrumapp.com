---
layout: default
section: data_events
title: "Prevent changes after signing"
description: "Lock down fields so they cannot be changed once a signature has been added to a record."
category: section
tags:
  - signature
  - set readonly
  - security
---

This example shows how to set all of your form fields to read-only once a signature has been added to the record.

```js
ON('edit-record', function (event) {
  if ($signature) {
    for (var dataName in this.elementsByDataName) {
      SETREADONLY(dataName, true);
    }
  }
});
```
