---
layout: default
section: expressions
title: "OR"
description: "Returns true if any of the provided arguments are logically true, and false if all of the provided arguments are logically false."
category: section
permalink: /expressions/reference/or/
---

### Parameters

`var_args_expressions` * (__required__) - An expression or reference that represents some logical value, i.e. `true` or `false`, or an expression that can be converted to a logical value.

### Returns

Boolean

### Examples

```js
OR(true, true, false)

// returns true
```


```js
OR(ISEVEN(5),ISODD(6))

// returns false
```