---
layout: default
section: data_events
title: "PROGRESS"
description: "Display a non-dismissible progress message in the mobile app."
category: section
permalink: /data-events/reference/progress/
---

### Parameters

`title` String (__required__) - A short title for the progress message.

`message` String (__required__) - The message content for the progress alert.

### Examples

~~~
PROGRESS('Just a sec!', 'Searching for nearby facilities ...')

// Displays an progress message that looks like
// +-------------------------------------------+
// | Just a sec!                               |
// +-------------------------------------------|
// |                                           |
// | Searching for nearby facilities ...       |
// |                                           |
// +-------------------------------------------+
~~~
{: .language-js}


~~~
PROGRESS()

// Call with no parameters to dismiss the progress message.
~~~
{: .language-js}