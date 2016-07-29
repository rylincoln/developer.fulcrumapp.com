---
layout: default
section: data_events
title: "Make a phone call"
description: "Use this to create a button on your form to make a phone call to a phone number entered in a text field"
category: section
tags:
  - alert
  - openurl
---

This example creates a button on your form that makes a phone call when it's tapped. The phone number to call is pulled from another field on the form. It assumes you have a text field to enter the phone number with a data name of `phone_number` and a hyperlink field with a data name of `call_phone`. It also includes a check for the platform since the web browser does not support calling phone numbers.

```js
ON('click', 'call_phone', function(event) {
  if (!EXISTS($phone_number)) {
    ALERT('You must enter a phone number.');
    return;
  }

  var platforms = ['iOS', 'Android'];

  if (platforms.indexOf(PLATFORM()) === -1) {
    ALERT('Only mobile devices support making phone calls.');
    return;
  }

  OPENURL('tel:' + $phone_number);
});
```
