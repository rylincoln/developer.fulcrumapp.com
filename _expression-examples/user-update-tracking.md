---
layout: default
section: expressions
title: "Track who has updated a record"
description: "Maintain a field for tracking record updates by field technicians only."
category: section
---

```js
if (this.platform == 'Android' || this.platform == 'iOS') {
  SETRESULT(USERFULLNAME());
}
```
