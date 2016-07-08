---
layout: default
section: data_events
title: "Require project"
description: "Use this custom validation logic to ensure every record has a project selected before saving."
category: section
---

This example uses the `validate-record` event in conjunction with the [INVALID](/data-events/reference/invalid) function and [PROJECTNAME](/expressions/reference/projectname/) expression to prevent saving if the user has not associated a [project](http://www.fulcrumapp.com/help/projects/) with the record.

```js
ON('validate-record', function (event) {
  if(!PROJECTNAME()) {
    INVALID('Please select a project before saving!');
  }
});
```
