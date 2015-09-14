---
layout: default
section: api
order: 3
title: "Records"
description: "Create, read, update, or delete data records"
category: section
img: /assets/img/guides/
difficulty: advanced
menu:
  - "Endpoints": endpoints
  - "Query Parameters": query-parameters
  - "Properties": record-properties
  - "Validations": validations
  - "Notes": notes
  - "Examples": examples
---

The Records API gives you access to the data records that have been collected or imported into your Fulcrum account.

## Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | /api/v2/records.json | Fetch all records. Additional parameters may be supplied (see query parameters table below). |
| GET | /api/v2/records/**:id**.json | Fetch a single record. |
| GET | /api/v2/records/**:id**/history.json | Fetch a single record's history. |
| POST | /api/v2/records.json | Create a single record. |
| PUT | /api/v2/records/**:id**.json | Update a single record. |
| DELETE | /api/v2/records/**:id**.json | Delete a single record. |

## Query Parameters

Available parameters to query the records associated with your account. All of the parameters may be used together to filter your data for more accurate results.

| Parameter | Type | Description |
|-----------|------|-------------|
| bounding_box | string | Bounding box of the records requested. Format should be: lat,long,lat,long (bottom, left, top, right). |
| client_created_before | integer | Return only records which were created by the client before the given time. |
| client_created_since  | integer | Return only records which were created by the client after the given time. |
| client_updated_before | integer | Return only records which were updated by the client before the given time. |
| client_updated_since  | integer | Return only records which were updated by the client after the given time. |
| created_before | integer | Return only records which were created before the given time. |
| created_since  | integer | Return only records which were created after the given time. |
| form_id | string | The UUID of the form with which the record is associated. Leaving this blank will query against all of your records. |
| newest_first | integer | If present, records will be sorted by `updated_at` date.
| page | integer | The page number requested. |
| per_page | integer | Number of records per page. By default, all requests are paginated to the maximum value of 20,000 items per request. |
| project_id | string | The UUID of the project with which the record is associated. Leaving this blank will query against all of your records. |
| updated_before | integer | Return only records which were updated before the given time. |
| updated_since  | integer | Return only records which were updated after the given time. |

### Filtering Between Dates

Using the before and since filters, you can retrieve records between a date range.

For instance, you can combine the `client_created_since` and `client_created_before` parameters to find the records that were created by your field crew between two dates.

When using the various created and updated time parameters, you must give the date since epoch in seconds: `2012-04-24 15:05:22 -0400 = 1335294322`.

Records will still be ordered according to the `updated_at` column, even when filtering with the other before/since parameters.

## Record Properties

| Property | Type | Required | Readonly | Description |
|----------|------|----------|----------|-------------|
| form_id | string | yes | yes | The unique form ID (UUID). |
| latitude | number | yes | no | The record latitude in WGS 84 decimal degrees. |
| longitude | number | yes | no | The record longitude in WGS 84 decimal degrees. |
| form_values | object | yes | no | Must be present and an object. The keys of this object must reflect the keys in the form schema. Different form types require different values (see table below). |
| status | string | no | no | Sets the color of the marker. |
| version | number | no | yes | Autoincremented version of the record for history tracking. |
| id | string | no | yes | The UUID of the record. |
| created_at | string | no | yes | Timestamp when the record was synced to the cloud. |
| updated_at | string | no | yes | Timestamp when the record was last synced to or processed while in the cloud. |
| client_created_at | string | no | no | Timestamp when the user first created the record. |
| client_updated_at | string | no | no | Timestamp when the record was last modified by the user. |
| created_by | string | no | yes | The name of user who created the record. |
| created_by_id | string | no | yes | The UUID of user who created the record. |
| updated_by | string | no | yes | The name of user who last updated the record. |
| updated_by_id | string | no | yes | The UUID of user who last updated the record. |
| project_id | string | no | no | The UUID of the [project](/help/projects/) tagged to the record. |
| assigned_to | string | no | no | The name of the user the record is assigned to. |
| assigned_to_id | string | no | no | The UUID of the user the record is assigned to. |
| altitude | number | no | yes | Meters above/below (+/-) sea level. |
| speed | number | no | yes | Meters per second. |
| course | number | no | yes | Only recorded if the device is moving and has no relation to how the device is oriented; course is in degrees (0.0-360); if no course can be determined then 0.0 will be returned. |
| horizontal_accuracy | number | no | yes | Accuracy of the latitude and longitude in meters. |
| vertical_accuracy | number | no | yes | Accuracy of the altitude value in meters. |

**Form Value Field Types**

| Field | Type | Example |
|-------|------|---------|
| Text | string | `"Hello world!"` |
| Numeric | string | `"50"` |
| Yes/No | string | `"yes"` |
| Date | string | `"2015"` |
| Time | string | `"13:50"` |
| Barcode | string | `"123456789"` |
| Hyperlink | string | `"http://www.fulcrumapp.com"` |
| Calculation | string | `"6"` |
| Single Choice | object with the following keys: `choice_values` (array of selected options) `other values` (array, empty or with values) | `{choice_values: ["Red"],other_values: []}` |
| Multiple Choice | object with the following keys: `choice_values` (array of selected options) `other values` (array, empty or with values) | `{choice_values: ["Red","White"],other_values: []}` |
| Classification | object with the following keys: `choice_values` (array of selected options) `other values` (array, empty or with values) | `{choice_values: ["Ford","Mustang"],other_values: []}` |
| Address | address object | `{sub_thoroughfare: "360",thoroughfare: "Central Ave",suite: "",locality: "St. Petersburg",sub_admin_area: "",admin_area: "FL",postal_code: "33701",country: "United States"}` |
| Photo | array of photo objects | `[{photo_id:"a8d1df96-44e5-75e9-7312-7e2c5e902496,caption: ""}]` |
| Video | array of video objects | `[{video_id:"712850b4-4de2-4d66-a6cc-034201245b52,caption: ""}]` |
| Audio | array of audio objects | `[{audio_id:"f81d51b5-1ce9-465b-be0b-27f1eca41e2c,caption: ""}]` |
| Signature | signature object | `{timestamp: "2015-07-09T14:54:04Z",signature_id: "9855e3f2-85a5-4b9f-9e62-0b1bbcfef091"}` |
| Repeatable | array of repeatable objects | `[{id:"d67801a0-adc1-6f60-4b0d-ec3a7191b34b",geometry:{type:"Point",coordinates:[-73.123456,42.123456]},form_values: {0129: "Hello world"}}]` |

## Validations

The following properties must be included in order to create/update a record object in our system. Any validation errors will return a `422` and an object with a list of validation errors.

**Required Properties**

| Property | Type | Description | Example |
|----------|------|-------------|---------|
| form_id | string | The unique form ID (UUID). | `"7a0c3378-b63a-4707-b459-df499698f23c"` |
| latitude | number | The record latitude in WGS 84 decimal degrees. | `27.770787` |
| longitude | number | The record longitude in WGS 84 decimal degrees. | `-82.638039` |
| form_values | object | Must be present and an object. The keys of this object must reflect the keys in the form schema. Different form types require different values (see table above).| `{"2832": "My string value","8373": {"choice_values": ["My choice value"]}}`

Example validation response if the `form_id` is not included:

```
{
  "record": {
    "errors": {
      "form_id": ["cannot be blank"]
    }
  }
}
```

## Notes

* The Records API _does not_ enforce any validation against your custom form fields.

* The entire record object is required when making an update. Omitting fields with existing data will result in data loss! The typical workflow for updating an existing record is to fetch the record object, modify it, and then submit the PUT request.


## Examples

All examples take advantage of [jQuery](http://jquery.com/) to perform asynchronous HTTP (Ajax) requests.

### Valid Record Response

```
{
  "record": {
    "status": "Red",
    "version": 1,
    "id": "4e1c33ad-5496-4818-826f-504e66239b4d",
    "created_at": "2015-05-30T15:47:19Z",
    "updated_at": "2015-05-30T15:47:19Z",
    "client_created_at": "2015-05-30T14:47:13Z",
    "client_updated_at": "2015-05-30T14:47:58Z",
    "created_by": "Bryan McBride",
    "created_by_id": "50633f84a934480d260001db",
    "updated_by": "Bryan McBride",
    "updated_by_id": "50633f84a934480d260001db",
    "form_id": "7a0c3378-b63a-4707-b459-df499698f23c",
    "project_id": null,
    "assigned_to": null,
    "assigned_to_id": null,
    "form_values": {
      "8373": {
        "choice_values": ["Pillar"],
        "other_values": []
      },
      "2832": "183",
      "57c9": "4",
      "193f": [{
        "photo_id": "da1f58f5-f31d-452f-81fc-233f94bcf48a",
        "caption": null
      }],
      "11f8": {
        "choice_values": ["Green Space"],
        "other_values": []
      }
    },
    "latitude": 42.8208336,
    "longitude": -73.8936123,
    "altitude": 98.0,
    "speed": null,
    "course": 170.0,
    "horizontal_accuracy": 3.9,
    "vertical_accuracy": null
  }
}
```

### Get all records for a particular form

```
$.ajax({
  type: "GET",
  url: "https://api.fulcrumapp.com/api/v2/records.json",
  data: {form_id: "my-form-id"},
  contentType: "application/json",
  dataType: "json",
  headers: {
    "X-ApiToken": "my-api-key"
  },
  success: function (data) {
    // do something!
    console.log(data);
  }
});
```

### Get a single record by ID

```
$.ajax({
  type: "GET",
  url: "https://api.fulcrumapp.com/api/v2/records/my-record-id.json",
  contentType: "application/json",
  dataType: "json",
  headers: {
    "X-ApiToken": "my-api-key"
  },
  success: function (data) {
    // do something!
    console.log(data);
  }
});
```

### Create a new record

```
$.ajax({
  type: "POST",
  url: "https://api.fulcrumapp.com/api/v2/records.json",
  data: JSON.stringify({
    "record": {
      "form_id": "my-form-id",
      "latitude": 27.770787,
      "longitude": -82.638039,
      "form_values": {
        "2832": "My string value",
        "8373": {
          "choice_values": [
            "My choice value"
          ]
        }
      }
    }
  }),
  contentType: "application/json",
  dataType: "json",
  headers: {
    "X-ApiToken": "my-api-key"
  },
  success: function (data) {
    // do something!
    console.log(data);
  }
});
```

### Update a record

```
$.ajax({
  type: "PUT",
  url: "https://api.fulcrumapp.com/api/v2/records/my-record-id.json",
  data: JSON.stringify({
    "record": {
      "form_id": "my-form-id",
      "latitude": 27.770787,
      "longitude": -82.638039,
      "form_values": {
        "2832": "My updated string value",
        "8373": {
          choice_values: [
            "My updated choice value"
          ]
        }
      }
    }
  }),
  contentType: "application/json",
  dataType: "json",
  headers: {
    "X-ApiToken": "my-api-key"
  },
  success: function (data) {
    // do something!
    console.log(data);
  }
});
```

### Delete a record

```
$.ajax({
  type: "DELETE",
  url: "https://api.fulcrumapp.com/api/v2/records/my-record-id.json",
  contentType: "application/json",
  dataType: "json",
  headers: {
    "X-ApiToken": "my-api-key"
  },
  success: function (data) {
    // do something!
    console.log(data);
  }
});
```
