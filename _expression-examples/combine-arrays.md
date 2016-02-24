---
layout: default
section: expressions
title: "Combine Arrays Together"
description: "Use this in a calculation field to combine two arrays together."
category: section
---

What this expression does is combine two arrays together into a single string that is displayed in the calculation field.

Most fields in Fulcrum will create a string from the data entered into the field. In those cases the [CONCATENATE()](http://developer.fulcrumapp.com/expressions/reference/concatenate/) or the [CONCAT()](http://developer.fulcrumapp.com/expressions/reference/concat/) expression can be used.

Field types like choice fields and classification sets create arrays from the values selected. In situations where you wish to combine two arrays together use the expression below. Please refer [this example](http://developer.fulcrumapp.com/expressions/examples/combine-arrays/) for combining arrays.

```
var choices = [];

Array.prototype.push.apply(choices, CHOICEVALUES($frulcrum_field));
Array.prototype.push.apply(choices, CHOICEVALUES($fulcrum_field));

SETRESULT(choices.join(', '));
```
