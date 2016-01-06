---
layout: default
section: data_events
title: "ALERT"
description: "Display a message as an alert in the mobile app."
category: section
permalink: /data-events/reference/alert/
---

## ALERT

Display a message as an alert in the mobile app.

### Parameters

`title` String (__required__) - A short title for the alert.

`message` String (__required__) - The message content for the alert.

### Examples

~~~
// Displays an alert that looks like
// +-------------------------------------------+
// | Warning!                                  |
// +-------------------------------------------|
// |                                           |
// | A depth of 98 feet is high. Are you sure? |
// |                                           |
// +-------------------------------------------+

ALERT('Warning!', 'A depth of 98 feet is high. Are you sure?')
~~~
{: .language-js}