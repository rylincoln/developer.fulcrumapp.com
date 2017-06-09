---
layout: default
section: desktop
title: "query"
description: "Run a query in the local database."
category: section
permalink: /desktop/reference/query/
---

### Description

Run a query in the local database.

### Parameters

{: .desktop}
| Option | Description | Required | Default |
| - | - | - | - |
| `--sql` | sql query | true | na|

### Examples

{: .desktop}
| OS | Command |
| - | - |
| macOS / Linux  | `fulcrum query --sql 'SELECT COUNT(*) FROM memberships'`  |
| Windows | `.\fulcrum.cmd query --sql "SELECT COUNT(*) FROM memberships"` |
