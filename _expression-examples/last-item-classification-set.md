---
layout: default
section: expressions
title: "Get Last Item In A Classification Set"
description: "Use this in a calculation field to pull the last item capture in a classification set field."
category: section
---

```js
SETRESULT(LAST(CHOICEVALUES($my_classification)));
```
