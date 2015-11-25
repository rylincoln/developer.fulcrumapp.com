---
layout: default
section: general
order: 5
title: "Mobile URL Actions"
description: "Using Mobile URL Actions for direct record access"
category: section
---

## Introduction

Both the Android and iOS apps support opening the app using the `fulcrumapp://` URL scheme. This allows you to create a new record or edit an existing record and optionally pass in certain attributes via parameters.

## Actions

| Action | Description |
|--------|-------------|
|`fulcrumapp://new-record`|Create a new record|
|`fulcrumapp://edit-record`|Edit an existing record|

## New Record Parameters

- `form_id` - **required** The form ID to activate and use for the new record
- `project_id` - **optional** The project ID to set on the new record
- `status` - **optional** The status to set on the new record
- `latitude` - **optional** The latitude to set on the new record
- `longitude` - **optional** The latitude to set on the new record
- `...attributes` - Any other URL encoded attributes should be `data_name=value` pairs to set on the new record

## Edit Record Parameters

- `form_id` - **required** The form ID to activate and use for the new record~~
- `record_id` - **required** The record ID to edit
- `project_id` - **optional** The project ID to set on the new record
- `status` - **optional** The status to set on the new record
- `latitude` - **optional** The latitude to set on the new record
- `longitude` - **optional** The latitude to set on the new record
- `...attributes` - Any other URL encoded attributes should be `data_name=value` pairs to set on the new record

## Supported Field Types

- Text: _Uri encoded text value_
- Yes/No: _Uri encoded text value_
- Barcode: _Uri encoded text value_
- Hyperlink: _Uri encoded text value_
- SingleChoice ('Other' is not supported): _Uri encoded text value_
- Classification: _Uri encoded, comma delimited list of values. ex: `1%2C2%2Chello%2C4`_
- Date: _YYYY-MM-DD_
- Time: _HH:MM_

## Validation

- `form_id` must exist for `new-record` action
- `record_id` must exist for `edit-record` action
- if `project_id` is passed
  - the project must exist
  - the active account's role must have permission to change projects
- if `status` is passed, the active account's role must have permission to change the status
- `latitude` must be a number and must be: -90 <= latitude <= 90
- `longitude` must be a number and must be: -180 <= longitude <= 180

## Examples

```
fulcrumapp://new-record?form_id=c55adab9-916d-46e9-98aa-7a2388a77b24&number_of_floors=3&sq_footage=2300
```

```
fulcrumapp://new-record?form_id=c55adab9-916d-46e9-98aa-7a2388a77b24&status=incomplete&sq_footage=2300&name=My%20Awesome%20Building&number_of_floors=3&latitude=28.038046&longitude=-81.952514
```

```
fulcrumapp://edit-record?record_id=11fb2a54-5158-4848-8695-c405c54525e4&status=incomplete&sq_footage=2300&name=SNI&number_of_floors=3&latitude=28.038046&longitude=-81.952514
```

## Notes

Several core Android apps, including Gmail and Messenger do not support custom schemes and will not correctly link to Fulcrum if you try to use the following `<a href="fulcrumapp://new-record?form_id=123-xyz">Create new record</a>`. We have setup a dedicated http page to help overcome this issue, by providing a web link, which opens the browser and redirects to open the Fulcrum app. If you are dealing with this issue, try the following: `<a href="http://www.fulcrumapp.com/action/#new-record?form_id=123-xyz">Create new record</a>`. This solution should work for both Android and iOS.
