---
layout: default
section: expressions
title: "Return Values Captured In A Choice Field In A Repeatable Section"
description: "Pulls values stored in a choice field that is inside a repeatable section and stores them in an array."
category: section
---
 Due to the nature of choice fields, the [REPEATABLEVALUES()](http://developer.fulcrumapp.com/expressions/reference/repeatablevalues/) expression cannot be used on its own when pulling values from a choice field inside a repeatable section. Instead use the example below.

 ```js
 if ($repeatable_section == null){
  SETRESULT(null);
} else {
  REPEATABLEVALUES($repeatable_section, 'choice_field_data_name').map(CHOICEVALUE);
}
```
