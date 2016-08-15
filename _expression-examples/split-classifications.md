---
layout: default
section: expressions
title: "Split classifications"
description: "Use this in a calculation field to split classifications into separate fields."
category: section
---

Assume you have a classification field called `site_location` with the following hierarchy:

Province > District > Commune

If you wanted to split the classifications into separate fields, you could use the following calculations:

**Province:**

```js
if ($site_location && $site_location.choice_values[0]) {
  SETRESULT($site_location.choice_values[0]);
}
```

**District:**

```js
if ($site_location && $site_location.choice_values[1]) {
  SETRESULT($site_location.choice_values[1]);
}
```

**Commune:**

```js
if ($site_location && $site_location.choice_values[2]) {
  SETRESULT($site_location.choice_values[2]);
}
```
