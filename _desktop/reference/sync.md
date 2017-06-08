---
layout: default
section: desktop
title: "sync"
description: "Sync the local Fulcrum database."
category: section
permalink: /desktop/reference/sync/
---

### Description

Sync an organization to the local database. Defaults to a one-time sync, but can continually sync (10 second intervals) using the `--forever` option

### Examples

| Option | Description | Required | Default |
| - | - | - | - |
| `--org` | organization name | true | na|
| `--forever` | keep the sync running forever | false | false |
| `--clean` | start a clean sync, all data will be deleted before starting | false | false |

| OS | Command |
| - | - |
| macOS / Linux  | `fulcrum sync --org 'Organization Name'`  |
| Windows | `.\fulcrum.cmd sync --org "Organization Name"` |
