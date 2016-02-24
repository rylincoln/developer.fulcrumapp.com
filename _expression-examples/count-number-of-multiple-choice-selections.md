---
layout: default
section: expressions
title: "Count Multiple Choice Field Selections"
description: "How to count the number of selections in a multiple choice field"
category: section
---

The following expression returns the number of selections in a multiple choice field.

```js
// the `|| []` at the end accounts for CHOICEVALUES() returning null when the field is blank
var selections = CHOICEVALUES($multiple_choice_field) || [];

// selections is an Array of the values
// selections.length is the number of selections

if (selections.length >= 3) {
  SETRESULT('There are at least 3 selections');
} else {
  SETRESULT('There are less than 3 selections');
}
```
