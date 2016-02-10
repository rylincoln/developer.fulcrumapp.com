---
layout: default
section: data_events
title: "SETREQUIRED"
description: "Set whether or not a field is required."
category: section
permalink: /data-events/reference/setrequired/
---

### Parameters

`field` String (__required__) - The data name for the field

`hidden` boolean,null (__required__) - Boolean value representing whether the field should be required

### Examples

```js
SETREQUIRED('weather_summary', true)

// Sets the weather summary field as required
```


```js
SETREQUIRED('weather_summary', false)

// Sets the weather summary field as not required
```


```js
SETREQUIRED('weather_summary', null)

// Unsets any override previously set by SETREQUIRED and uses the original setting from the form schema
```