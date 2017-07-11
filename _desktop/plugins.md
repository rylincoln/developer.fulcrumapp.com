---
layout: default
section: desktop
order: 3
title: "Fulcrum Desktop Plugins"
description: "Plugins to extend Fulcrum Desktop."
category: section
menu:
  - "Database Plugins": database-plugins
  - "Media Plugins": media-plugins
  - "Other Plugins": other-plugins
---

Fulcrum Desktop was designed to be easily extended via a plugin architecture. The core function of Desktop is an intelligent synching mechanism, which can be extended to build out custom integrations with databases, web services, and more.

# Database Plugins

Fulcrum Desktop syncs with an internal SQLite database, similar to the database embedded within the mobile applications. This internal _fulcrum.db_ database is not very user-friendly, so you will likely want to install one of the database plugins, which include more user-friendly app record views.

## PostgreSQL

[PostgreSQL](https://www.postgresql.org/) is a popular and powerful, open source object-relational database management system (ORDBMS) with an emphasis on extensibility and standards compliance. Combined with the [PostGIS](http://postgis.net/) spatial database extension, Postgres powers Fulcrum's back-end database.

Once this plugin is installed, the `sync` command will keep your PostgreSQL database in sync with your Fulcrum Organization. [Source code on GitHub](https://github.com/fulcrumapp/fulcrum-desktop-postgres).

### Options:

{:.table.table-striped.event-table}
| Option | Description | Required | Default |
| - | - | - | - |
| `--version` | Show version number | false | na |
| `--help` | Show help | false | na |
| `--org` | organization name | true | na |
| `--pg-host` | postgresql server host | false | `localhost` |
| `--pg-port` | postgresql server port | false | `5432` |
| `--pg-user` | postgresql user | false | na |
| `--pg-password` | postgresql password | false | na |
| `--pg-database` | postgresql database name | false | `fulcrumapp` |
| `--pg-schema` | postgresql schema to create the friendly views in | false | `public` |
| `--pg-before-function` | postgresql function to call before the sync starts. It's called with no parameters. | false | na |
| `--pg-after-function` | postgresql function to call after the sync finishes. It's called with no parameters. | false | na |
| `--pg-underscore-names` / `--no-pg-underscore-names` | create the views with underscored names instead of the app name | false | na |

### Install the plugin:

{:.table.table-striped.event-table}
| OS | Command |
| - | - |
| macOS / Linux  | `fulcrum install-plugin --url https://github.com/fulcrumapp/fulcrum-desktop-postgres`  |
| Windows | `.\fulcrum.cmd install-plugin --url https://github.com/fulcrumapp/fulcrum-desktop-postgres` |

### Setup the database:

Be sure you have a database already created with the PostGIS extension installed. You can name your database "fulcrumapp" to use the default settings, and execute the following query to enable PostGIS: `CREATE EXTENSION postgis;`

{:.table.table-striped.event-table}
| OS | Command |
| - | - |
| macOS / Linux  | `fulcrum postgres --org 'Organization Name'`  |
| Windows | `.\fulcrum.cmd postgres --org 'Organization Name'` |

### Keep the database in sync with your Organization:

{:.table.table-striped.event-table}
| OS | Command |
| - | - |
| macOS / Linux  | `fulcrum sync --org 'Organization Name' --pgdatabase 'mydatabase' --forever`  |
| Windows | `.\fulcrum.cmd sync --org 'Organization Name' --pgdatabase 'mydatabase' --forever` |

---

## GeoPackage

[GeoPackage](http://www.geopackage.org/) is an open, standards-based, platform-independent, portable, self-describing, compact format for transferring geospatial information. Built on the SQLite platform, the GeoPackage standard defines the schema for a GeoPackage, including table definitions, integrity assertions, format limitations, and content constraints.

Once this plugin is installed, the `sync` command will keep your GeoPackage database in sync with your Fulcrum Organization. [Source code on GitHub](https://github.com/fulcrumapp/fulcrum-desktop-geopackage).

### Options:

{:.table.table-striped.event-table}
| Option | Description | Required | Default |
| - | - | - | - |
| `--version` | Show version number | false | na |
| `--help` | Show help | false | na |
| `--org` | organization name | true | na |

### Install the plugin:

{:.table.table-striped.event-table}
| OS | Command |
| - | - |
| macOS / Linux  | `fulcrum install-plugin --url https://github.com/fulcrumapp/fulcrum-desktop-geopackage`  |
| Windows | `.\fulcrum.cmd install-plugin --url https://github.com/fulcrumapp/fulcrum-desktop-geopackage` |

### Setup the database:

{:.table.table-striped.event-table}
| OS | Command |
| - | - |
| macOS / Linux  | `fulcrum geopackage --org 'Organization Name'`  |
| Windows | `.\fulcrum.cmd geopackage --org 'Organization Name'` |

This will create the following GeoPackage file:

{:.table.table-striped.event-table}
| OS | Path |
| - | - |
| macOS / Linux  | /Users/username/.fulcrum/geopackage/Organization Name.gpkg |
| Windows | \Users\username\AppData\Local\Programs\Fulcrum\geopackage\Organization Name.gpkg |

### Keep the database in sync with your Organization:

{:.table.table-striped.event-table}
| OS | Command |
| - | - |
| macOS / Linux  | `fulcrum sync --org 'Organization Name' --forever`  |
| Windows | `.\fulcrum.cmd sync --org 'Organization Name' --forever` |

---

## MS SQL Server

[MS SQL Server](https://www.microsoft.com/en-us/sql-server/) is a popular relational database management system (RDBMS) developed by Microsoft.

Once this plugin is installed, the `sync` command will keep your MS SQL Server database in sync with your Fulcrum Organization. [Source code on GitHub](https://github.com/fulcrumapp/fulcrum-desktop-postgres).

#### Options:

{:.table.table-striped.event-table}
| Option | Description | Required | Default |
| - | - | - | - |
| `--version` | Show version number | false | na |
| `--help` | Show help | false | na |
| `--org` | organization name | true | na |
| `--setup` | setup the database | false | na |
| `--msdatabase` | mssql database name | false | "fulcrumapp"|
| `--mshost` | mssql server host | false | "localhost" |
| `--msport` | mssql server port | false | 1433 |
| `--msuser` | mssql user | false | na |
| `--mspassword` | mssql password | false | na |
| `--msschema` | mssql schema | false | na |

### Install the plugin:

{:.table.table-striped.event-table}
| OS | Command |
| - | - |
| macOS / Linux  | `fulcrum install-plugin --url https://github.com/fulcrumapp/fulcrum-desktop-mssql`  |
| Windows | `.\fulcrum.cmd install-plugin --url https://github.com/fulcrumapp/fulcrum-desktop-mssql` |

### Setup the database:

The `--setup` option allows you to create the database from the fulcrum CLI.

{:.table.table-striped.event-table}
| OS | Command |
| - | - |
| macOS / Linux  | `fulcrum mssql --setup --org 'Organization Name' --msuser USERNAME --mspassword PASSWORD --mshost 'localhost'`  |
| Windows | `.\fulcrum.cmd mssql --setup --org 'Organization Name' --msuser USERNAME --mspassword PASSWORD --mshost 'localhost'` |

### Keep the database in sync with your Organization:

{:.table.table-striped.event-table}
| OS | Command |
| - | - |
| macOS / Linux  | `fulcrum sync --org 'Organization Name' --forever`  |
| Windows | `.\fulcrum.cmd sync --org 'Organization Name' --forever` |

---

# Media Plugins

In addition to syncing database records, Fulcrum Desktop supports intelligently downloading media files.

## Fulcrum Desktop Media

Concurrent file downloads and automatic retries for Fulcrum media files (photos, videos, audio, signatures) and associated track files for spatial video & audio (gpx, kml, geojson, json, srt).

#### Options:

{:.table.table-striped.event-table}
| Option | Description | Required | Default |
| - | - | - | - |
| `--version` | Show version number | false | na |
| `--help` | Show help | false | na |
| `--org` | organization name | true | na |
| `--media-path` | media storage directory  | false | ~/.fulcrum/media |
| `--concurrency` | concurrent downloads (between 1 and 10) | false | na |


### Install the plugin:

{:.table.table-striped.event-table}
| OS | Command |
| - | - |
| macOS / Linux  | `fulcrum install-plugin --url https://github.com/fulcrumapp/fulcrum-desktop-media`  |
| Windows | `.\fulcrum.cmd install-plugin --url https://github.com/fulcrumapp/fulcrum-desktop-media` |

### Download all media files for your Organization:

{:.table.table-striped.event-table}
| OS | Command |
| - | - |
| macOS / Linux  | `fulcrum media --org 'Organization Name' --media-path /path/to/media/storage`  |
| Windows | `.\fulcrum.cmd media --org 'Organization Name' --media-path /path/to/media/storage` |

---

## Fulcrum Desktop S3

Sync media to your own [Amazon Simple Storage Service (Amazon S3)](https://aws.amazon.com/s3) bucket.

#### Options:

{:.table.table-striped.event-table}
| Option | Description | Required | Default |
| - | - | - | - |
| `--version` | Show version number | false | na |
| `--help` | Show help | false | na |
| `--org` | organization name | true | na |

### Install the plugin:

{:.table.table-striped.event-table}
| OS | Command |
| - | - |
| macOS / Linux  | `fulcrum install-plugin --url https://github.com/fulcrumapp/fulcrum-desktop-s3`  |
| Windows | `.\fulcrum.cmd install-plugin --url https://github.com/fulcrumapp/fulcrum-desktop-s3` |

### Configuration

```sh
export S3_ACCESS_KEY="key"
export S3_ACCESS_SECRET="secret"
export S3_BUCKET="mybucket"
```

### Sync media to S3:

{:.table.table-striped.event-table}
| OS | Command |
| - | - |
| macOS / Linux  | `fulcrum sync --org 'Organization Name'`  |
| Windows | `.\fulcrum.cmd sync --org 'Organization Name'` |

---

# Other Plugins

Other experimental plugins.

## Fulcrum Desktop Reports

Generate custom PDF reports from Fulcrum data. To customize reports, edit `template.ejs` or use the `--template` option to reference a custom `.ejs` embedded JavaScript template file.

#### Options:

{:.table.table-striped.event-table}
| Option | Description | Required | Default |
| - | - | - | - |
| `--version` | Show version number | false | na |
| `--help` | Show help | false | na |
| `--org` | organization name | true | na |
| `--form` | form name | false | na |
| `--skip` | skip form name | false | na |
| `--template` | path to ejs template file | false | na |
| `--header` | path to header ejs template file | false | na |
| `--footer` | path to footer ejs template file | false | na |
| `--reportPath` | report storage directory | false | na |
| `--mediaPath` | media storage directory | false | na |
| `--fileName` | file name | false | na |
| `--concurrency` | concurrent reports (between 1 and 10) | false | 5 |
| `--repeatables` | generate a PDF for each repeatable child record | false | false |
| `--recurse` | recursively print all child items in each PDF | false | true |

### Install the plugin:

{:.table.table-striped.event-table}
| OS | Command |
| - | - |
| macOS / Linux  | `fulcrum install-plugin --url https://github.com/fulcrumapp/fulcrum-desktop-reports`  |
| Windows | `.\fulcrum.cmd install-plugin --url https://github.com/fulcrumapp/fulcrum-desktop-reports` |

### Run reports

{:.table.table-striped.event-table}
| OS | Command |
| - | - |
| macOS / Linux  | `fulcrum reports --org 'Organization Name' --form 'GeoBooze' --where "beer_type_value = 'Amber Ale'" --template custom.ejs`  |
| Windows | `.\fulcrum.cmd reports --org 'Organization Name' --form 'GeoBooze' --where "beer_type_value = 'Amber Ale'" --template custom.ejs` |

### Keep reports in sync

{:.table.table-striped.event-table}
| OS | Command |
| - | - |
| macOS / Linux  | `fulcrum sync --org 'Organization Name'`  |
| Windows | `.\fulcrum.cmd sync --org 'Organization Name'` |
