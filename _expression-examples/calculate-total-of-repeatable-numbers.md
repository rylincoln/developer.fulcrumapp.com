---
layout: default
section: expressions
title: "Sum of Numbers in a Repeatable (Total Score or Cost)"
description: "Calculate the sum of numbers in a repeatable field."
category: section
---

This example grabs numeric values from a choicefield (with options N/A, 0, 1, 2, 3) located in a repeatable. It converts the string values to numbers and then calculates the sum.

```js
var array = REPEATABLEVALUES($name_of_repeatable, 'data_name_of_choicefield_score');

var total_score = 0;

for (var i=0; i < array.length; i++){
  var value = array[i]['choice_values'];
  var score = 0;
  if (value == 'N/A'){
    score = 0
  } else {
    score = NUM(array[i]['choice_values']);
  }

  total_score += score
}
SETRESULT(total_score);
```