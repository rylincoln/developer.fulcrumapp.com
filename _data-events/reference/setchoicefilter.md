---
layout: default
section: data_events
title: "SETCHOICEFILTER"
description: "Filter the choices in a choice field."
category: section
permalink: /data-events/reference/setchoicefilter/
---

### Parameters

`field` String (__required__) - The data name for the field

`filter` String,Array,null (__required__) - The string or strings to filter choices by

### Examples

```js
SETCHOICEFILTER('weather_summary', 'cat')

// Filters the choices in the weather summary field to those that contain 'cat'
```


```js
SETCHOICEFILTER('weather_summary', ['cat', 'dog'])

// Filters the choices in the weather summary field to those that contain 'cat' or 'dog'
```


```js
SETCHOICEFILTER('weather_summary', null)

// Unsets any filter previously set by SETCHOICEFILTER and applies no filter
```