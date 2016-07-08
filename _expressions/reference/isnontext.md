---
layout: default
section: expressions
title: "ISNONTEXT"
description: "Tests whether a value is non-textual."
category: section
permalink: /expressions/reference/isnontext/
---

### Parameters

`value` String (__required__) - The value to test as non-text.

### Returns

Boolean

### Examples

```js
ISNONTEXT(4)

// returns true
```


```js
ISNONTEXT("Some text")

// returns false
```