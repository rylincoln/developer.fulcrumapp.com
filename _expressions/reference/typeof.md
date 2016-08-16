---
layout: default
section: expressions
title: "TYPEOF"
description: "Returns the type of a value"
category: section
permalink: /expressions/reference/typeof/
---

### Parameters

`value` * (__required__) - A value to get the type of

### Returns

String - The type of the value

### Examples

```js
TYPEOF('test')

// returns "string"
```


```js
TYPEOF(1)

// returns "number"
```


```js
TYPEOF(true)

// returns "boolean"
```


```js
TYPEOF(null)

// returns "null"
```


```js
TYPEOF(new Date)

// returns "date"
```


```js
TYPEOF({ name: 'Test' })

// returns "object"
```


```js
TYPEOF([1, 2, 3])

// returns "array"
```