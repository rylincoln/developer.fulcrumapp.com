---
layout: default
section: expressions
title: "Generate a full timestamp"
description: "Use this in a calculation field to add a full timestamp for when the record was initially generated or edited, automatically."
category: section
---

Resulting format looks like: `2015-11-23 16:36:14`.

```js
TIMESTAMP();
```

Note that since calculation fields are constantly evaluated, this timestamp will always be overwritten with the current time. If you want to add the initial timestamp and prevent it from changing, you can wrap this in a [`ONCE`](/expressions/reference/once/) function like so:

```js
ONCE(TIMESTAMP());
```
