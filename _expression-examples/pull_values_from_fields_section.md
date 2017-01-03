---
layout: default
section: expressions
title: "Obtain Values from fields within a section"
description: "Loop through and pull a value from a fields within a section."
category: section
---

This example will return a string with all the values that are stored in fields that are within a `section`.


```
var dataNames = PLUCK(FIELD('section').elements, 'data_name');

var stringValues = [];

for (var i = 0; i < dataNames.length; ++i) {
  var type = FIELD(dataNames[i]).type;
  var value = VALUE(dataNames[i]);
  var stringValue = value;

  if (!ISBLANK(value)) {
    if (type === 'ChoiceField') {
      stringValue = CHOICEVALUES(value).join(', ');
    }

    stringValues.push(stringValue);
  }
}

SETRESULT(stringValues.join(', '));
```
