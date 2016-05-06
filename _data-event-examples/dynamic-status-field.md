---
layout: default
section: data_events
title: "Set the status field options based on user role"
description: "Use this example to control which status field options are available based on the user role"
category: section
---

This example shows how to conditionally control which status options are available based on the user's role. This is useful if you'd like to reserve certain status options for admins only.

For this to work, all of the status options need to be defined in the builder. In this example, we have the following status options:

* `pending` - Pending
* `submitted` - Submitted
* `approved` - Approved
* `completed` - Completed

We only want the field users to be able to select `pending` and `submitted`.

```js
ON('load-record', function(event) {
  var fieldUserRoles = ['Standard User', 'Custom Field User Role'];

  // if the current role is one of the designated field user roles...
  if (fieldUserRoles.indexOf(ROLE()) !== -1) {
    // set the status field filter
    SETSTATUSFILTER(['pending', 'submitted']);
  }
});
```
