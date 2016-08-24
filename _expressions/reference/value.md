---
layout: default
section: expressions
title: "VALUE"
description: "Returns the current value of a field given the field&#39;s data name"
category: section
permalink: /expressions/reference/value/
---

### Parameters

`field` String (__required__) - the Data Name of the field

### Returns

* - the current field value

### Examples

```js
VALUE('name')

// identical to using $name

// returns "Test Record"
```