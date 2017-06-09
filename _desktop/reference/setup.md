---
layout: default
section: desktop
title: "setup"
description: "Setup the local Fulcrum database."
category: section
permalink: /desktop/reference/setup/
---

### Description

Setup the local Fulcrum database.

### Parameters

Note: `setup` can be run interactively (via prompts, without passing email/password as parameters) on Linux/macOS.

{: .desktop}
| Option | Description | Required | Default |
| - | - | - | - |
| `--email` | emailed associated with your Fulcrum account | true | na|
| `--password` | password for your Fulcrum account | true | na |

### Examples

{: .desktop}
| OS | Command |
| - | - |
| macOS / Linux  | `fulcrum setup`  |
| Windows | `.\fulcrum.cmd setup --email EMAIL --password SECRET` |
