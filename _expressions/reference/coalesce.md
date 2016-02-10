---
layout: default
section: expressions
title: "COALESCE"
description: "Returns the first parameter whose value exists"
category: section
permalink: /expressions/reference/coalesce/
---

### Parameters

`parameters` * (__required__) - The value to return if it exists

### Returns

* - The first parameter that exists

### Examples

```js
COALESCE(null, null, 'Test', 1)

// returns Test
```


```js
COALESCE(1, null, null)

// returns 1
```


```js
COALESCE(null, null, null)

// returns undefined
```