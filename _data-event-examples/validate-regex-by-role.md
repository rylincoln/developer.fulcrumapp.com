---
layout: default
section: data_events
title: "Enforce regex pattern validation by role"
description: "Use this to validate text against a regex pattern based on user role."
category: section
tags:
  - validation
  - regex
  - role
---

This example uses the [ISROLE](/expressions/reference/isrole/) and [INVALID](/data-events/reference/invalid/) functions to programmatically validate a text field against a regex pattern based on the user role. This could be used to force field user comments to be more succinct while allowing manager comments to be more detailed.

```js
ON('validate-record', function(event) {
  if (ISROLE('Standard User', 'Field Crew')) {
    var str = $name;
    var re = /^[A-Za-z]{5}$/;
    var result = re.test(str);
    if (result == false) {
      INVALID('The value for the Name field must be exactly 5 characters');
    }
  }
});
```
