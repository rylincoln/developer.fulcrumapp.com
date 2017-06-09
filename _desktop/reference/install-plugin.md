---
layout: default
section: desktop
title: "install-plugin"
description: "Install a plugin."
category: section
permalink: /desktop/reference/install-plugin/
---

### Description

Install a plugin.

### Parameters

{:.table.table-striped.event-table}
| Option | Description | Required | Default |
| - | - | - | - |
| `--name` | the plugin name | false | na|
| `--url` | the URL to a git repo | false | false |

### Examples

{:.table.table-striped.event-table}
| OS | Command |
| - | - |
| macOS / Linux  | `fulcrum install-plugin --url https://github.com/fulcrumapp/fulcrum-desktop-postgres`  |
| Windows | `.\fulcrum.cmd install-plugin --url https://github.com/fulcrumapp/fulcrum-desktop-postgres` |
