---
layout: default
section: data_events
title: "Disable requirements by user or role"
description: "Relax field requirements for users by email or role"
category: section
tags:
  - set required
---

The examples below show how to disable requirement validation for all of your form fields, based on a list of user emails or Fulcrum roles.

**Email:**

```js
ON('load-record', function(event) {
  var emails = ['john.doe@gmail.com', 'jane.doe@gmail.com'];
  if (CONTAINS(emails, EMAIL())) {
    DATANAMES().forEach(function(dataName) {
      SETREQUIRED(dataName, false);
    });
  }
});
```

**Role:**

```js
ON('load-record', function(event) {
  if (ISROLE('Owner', 'Manager')) {
    DATANAMES().forEach(function(dataName) {
      SETREQUIRED(dataName, false);
    });
  }
});
```
