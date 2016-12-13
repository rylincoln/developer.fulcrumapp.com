---
layout: default
section: expressions
title: "Pull Selected Choice Option Label"
description: "Use this in a calculation field to pull the label of the selected choice option."
category: section
---

This example can be used to pull in a selected choice option's label. This will only work on choice fields where the choice options are defined in the choice field. This will not work for predefined choice lists.

```
function findChoiceLabel(dataName) {
  var selectedChoiceValue = CHOICEVALUE(VALUE(dataName));
​
  var choice = FIELD(dataName).choices.find(function(choice) {
    return choice.value === selectedChoiceValue;
  });

  return choice ? choice.label : null;
}
​
SETRESULT(findChoiceLabel('choicefield'));
```

All you need to do is replace the 'choicefield' to the data name of the choice field in your app.
