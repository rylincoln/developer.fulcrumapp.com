---
layout: default
section: desktop
order: 1
title: "Fulcrum Desktop Introduction"
description: "Introduction to using the Fulcrum Desktop utility."
category: section
menu:

---

Fulcrum Desktop is a command line tool for intelligently syncing your Fulcrum Organization data to an on-site database. The local database is a complete API representation with search indexes and query tables, making it ideal for integrating Fulcrum with data driven applications, such as Business Intelligence (BI) and Geographic Information Systems (GIS).

This application is still very much under active development and has been designed to support extensibility and customization via plugins, so expect changes, improvements, and additional functionality in the coming weeks and months.

## How it works
You first run the `setup` command to authenticate to your Fulcrum account and setup the local fulcrum SQLite database. Next you can run the `sync` command to sync with your Fulcrum organization. This will build all the necessary database tables, indexes, views, etc. and sync down all of your Fulcrum resources, including forms, records, choice lists, classification sets, projects, members, and roles.

The internal `fulcrum.db` SQLite database is not very user friendly, so you will likely want to install one of the database plugins.

## Installation

Fulcrum Desktop has installers for Linux, macOS, and Windows (32-bit and 64-bit).
Installers are available from the [releases](https://github.com/fulcrumapp/fulcrum-desktop/releases) page.

### Linux

Ubuntu x64:

```sh
curl -o- -L https://raw.githubusercontent.com/fulcrumapp/fulcrum-desktop/master/install.sh | sudo bash
```

### macOS

Open the .dmg, drag the icon to `Applications`. That's it!

### Windows

Install from the Setup .exe and follow the instructions. This will create a shortcut icon on your desktop (and open up a GUI window - _which is not currently functional_ - you can close this window). Double-clicking the shortcut icon will open the GUI again; doing this also triggers the auto-updater, if there is an updated release available it will be downloaded and installed.
