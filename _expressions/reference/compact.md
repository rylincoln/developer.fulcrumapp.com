---
layout: default
section: expressions
title: "COMPACT"
description: "Removes empty items from an array"
category: section
permalink: /expressions/reference/compact/
---

### Parameters

`value` Array (__required__) - an array of items

### Returns

Array

### Examples

```js
COMPACT([null, 1, undefined, null, 2, 3])

// returns [1,2,3]
```