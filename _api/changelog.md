---
layout: default
section: api
order: 2
title: "Changelog"
description: "Fulcrum API changelog and update notes"
category: section
---

While we are continually making improvements and updates to the Fulcrum platform, these changes rarely impact the API. Any changes that do have an impact on the API are noted below.

## August 2016

To support disabling the project and assignment fields on apps, 2 new attributes have been added to the `forms` endpoint. You will now see `projects_enabled` and `assignment_enabled` when retrieving form definitions.

There are 5 new top-level attributes on `records` to support new product features for capturing audit information.

* `created_duration` - the number of seconds spent creating the record
* `updated_duration` - the number of seconds spent updating the record
* `edited_duration` - the total cummulative seconds spent editing the record (creating + all updates)
* `created_location` - an object containing the location of where the record was created from. It has 4 attributes:
  * `latitude`
  * `longitude`
  * `altitude`
  * `horizontal_accuracy`
* `updated_location` - an object containing the location of where the record was updated from. It has 4 attributes:
  * `latitude`
  * `longitude`
  * `altitude`
  * `horizontal_accuracy`

Note that all of these attributes are brand new and require iOS 2.12.0 and Android 2.19.0 for them to be populated.

## May 2016

To support new enhancements in the web record editor, `changeset_id` has been added to the `records/:id` endpoint.
