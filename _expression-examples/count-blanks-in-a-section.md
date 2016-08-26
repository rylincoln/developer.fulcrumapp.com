---
layout: default
section: expressions
title: "Count blank fields in a section"
description: "Get a total count of unanswered fields in a section."
category: section
---

This example sums up the number of unanswered (blank) fields in a defined section.

```js
var elements = FIELD('section_one').elements;

var blankCount = 0;

for (var i = 0; i < elements.length; i++) {
  if (ISBLANK(VALUE(elements[i].data_name))) {
    blankCount += 1;
  }
}

SETRESULT(blankCount);
```
