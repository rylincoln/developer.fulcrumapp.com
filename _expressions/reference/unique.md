---
layout: default
section: expressions
title: "UNIQUE"
description: "Returns the unique values within an array"
category: section
permalink: /expressions/reference/unique/
---

### Parameters

`values` Array (__required__) - The values to unique

`callback` function (optional) - A transform function to use when passing objects

### Returns

Array

### Examples

```js
UNIQUE([1, 2, 3, 3, 1])

// returns [1,2,3]
```


```js
UNIQUE(['blue', 'red', 'red', 'green', 'blue'])

// returns ["blue","red","green"]
```