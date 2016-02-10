---
layout: default
section: expressions
title: "FLATTEN"
description: "Flatten nested arrays into a flat array"
category: section
permalink: /expressions/reference/flatten/
---

### Parameters

`value` Array (__required__) - Array to flatten

### Returns

Array

### Examples

```js
FLATTEN([[1, 2, 3]])

// returns [1,2,3]
```


```js
FLATTEN([[1, 2, 3], [4, 5, 6]])

// returns [1,2,3,4,5,6]
```