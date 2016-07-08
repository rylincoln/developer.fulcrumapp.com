---
layout: default
section: expressions
title: "Return The Latest Date"
description: "Use this in a calculation field to return the latest date captured in a date field in repeatable section"
category: section
---

This will return the latest date captured in a date field that is in a repeatable section.

```js
var dates = REPEATABLEVALUES($repeatable_section, 'date_field');
var maxDate;

if (dates && dates.length > 0) {
  maxDate = dates[0];

  dates.forEach(function(currentDate) {
    if (currentDate > maxDate) {
      maxDate = currentDate;
    }
  });

  SETRESULT(maxDate);
}
```
