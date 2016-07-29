---
layout: default
section: expressions
title: "Return the most frequent value"
description: "Use this in a calculation field to return the most frequent value from a field in a repeatable section."
category: section
---

This example uses the [REPEATABLEVALUES()](http://developer.fulcrumapp.com/expressions/reference/repeatablevalues/) expression to return the most frequent value captured in a field in a repeatable section.

```js
function mostFrequentValue(array) {
  if (array === null) {
    return null;
  }
  var frequencies = {};
  var mostFrequentCount = 0;
  var mostFrequentValue = null;
  array.forEach(function(value) {
    if (frequencies[value] === null) {
      frequencies[value] = 1;
    } else {
      frequencies[value] += 1;
    }
    if (frequencies[value] > mostFrequentCount) {
      mostFrequentCount = frequencies[value];
      mostFrequentValue = value;
    }
  });
  return mostFrequentValue;
}
var values = FLATTEN([
  RPEATABLEVALUES($repetable_section, 'field_in_repeatable'),
]);
var value = mostFrequentValue(values);
SETRESULT(value);
```
