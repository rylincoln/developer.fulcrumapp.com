---
layout: default
section: data_events
title: "Auto-populate Last Value"
description: "Grabs the last value entered in a field and populates it into another field in the next new child record."
category: section
tags:
  - auto-populate
---

This example can be utilized to pull the value in a field in the last child record and then automatically populate that value into another field in a new child record.

```js
ON('new-repeatable', 'repeatable_section', function(event){
  var last = LAST(REPEATABLEVALUES($repeatable_section, 'field_2'))
    SETVALUE('field_1', last);
});
```
