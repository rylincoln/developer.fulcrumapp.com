---
layout: default
section: expressions
title: "Count the number of selections in a multiple choice field"
description: "How to count the number of selections in a multiple choice field"
category: section
---

The following expression returns the number of selections in a multiple choice field.

```
var selections = CHOICEVALUES($multiple_choice_field) || [];

// selections is an Array of the values
// selections.length is the number of selections

if (selections.length >= 3) {
  SETRESULT('There were at least 3 selections');
} else {
  SETRESULT('There are less than 3 selections');
}
```
