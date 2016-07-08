---
layout: default
section: expressions
title: "SETRESULT"
description: "Sets the current result value for the current expression. This is useful in multiline expressions to set the result value."
category: section
permalink: /expressions/reference/setresult/
---

### Parameters

`value` * (__required__) - the value to set as the result of the expression

### Returns

* - the current result value after the value has been set

### Examples

```js
SETRESULT(1)

// returns 1
```