---
layout: default
section: expressions
title: "Track Who Has Updated A Record"
description: "Maintain a field for tracking record updates by field technicians only."
category: section
---

```js
if (this.platform == 'Android' || this.platform == 'iOS') {
  SETRESULT(USERFULLNAME());
}
```
