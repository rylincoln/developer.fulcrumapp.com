---
layout: default
section: data_events
title: "Require field based on date comparison"
description: "Demonstrates how to compare a date field with today's date to script custom requirement logic."
category: section
tags:
  - date add
  - set required
---

This example uses the [DATEADD](/expressions/reference/dateadd/) and [SETREQUIRED](/data-events/reference/setrequired/) functions to compare today's date with the `start_date` date field. This example assumes `start_date` was entered in a previous version of the record, so we can listen to the `load-record` event, add 7 days to the `start_date` value and if the current date is a week or more later, we require the `end_date` field be filled out.

```js
ON('load-record', function (event) {
  var today = new Date();
  if (today >= DATEADD($start_date, 7)) {
    SETREQUIRED('end_date', true);
  }
});
```

This works well in cases where you are revisiting an existing record, but you could also use `validate-record` to compare dates for the current version.

```js
ON('validate-record', function (event) {
  var today = new Date();
  if (today >= DATEADD($start_date, 7)) {
    INVALID('End Date is required!');
  }
});
```
