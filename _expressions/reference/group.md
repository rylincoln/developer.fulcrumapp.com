---
layout: default
section: expressions
title: "GROUP"
description: "Returns the sorted values within an array"
category: section
permalink: /expressions/reference/group/
---

### Parameters

`values` Array (__required__) - The values to sort

`callback` function (optional) - A transform function to use when sorting objects

### Returns

Array

### Examples

```js
GROUP(['red', 'green', 'green', 'blue'])

// returns {"red":["red"],"green":["green","green"],"blue":["blue"]}
```


```js
GROUP([1, 1, 1, 2, 3])

// returns {"1":[1,1,1],"2":[2],"3":[3]}
```