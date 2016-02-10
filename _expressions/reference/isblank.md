---
layout: default
section: expressions
title: "ISBLANK"
description: "Checks whether the field&#39;s value is empty."
category: section
permalink: /expressions/reference/isblank/
---

### Parameters

`value` String (__required__) - Field value to check.

### Returns

Boolean

### Examples

```js
ISBLANK("")

// returns true
```


```js
ISBLANK("Test")

// returns false
```