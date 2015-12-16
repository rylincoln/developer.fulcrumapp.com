---
layout: default
section: endpoints
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

<table class="table table-striped">
  <thead>
    <tr>
      <th>Method</th>
      <th>Endpoint</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>GET</td>
      <td>/api/v2/records.json</td>
      <td>Fetch all records. Additional parameters may be supplied (see query parameters table below).</td>
    </tr>
    <tr>
      <td>GET</td>
      <td>/api/v2/records/<strong>:id</strong>.json</td>
      <td>Fetch a single record.</td>
    </tr>
    <tr>
      <td>GET</td>
      <td>/api/v2/records/<strong>:id</strong>/history.json</td>
      <td>Fetch a single record’s history.</td>
    </tr>
    <tr>
      <td>POST</td>
      <td>/api/v2/records.json</td>
      <td>Create a single record.</td>
    </tr>
    <tr>
      <td>PUT</td>
      <td>/api/v2/records/<strong>:id</strong>.json</td>
      <td>Update a single record.</td>
    </tr>
    <tr>
      <td>DELETE</td>
      <td>/api/v2/records/<strong>:id</strong>.json</td>
      <td>Delete a single record.</td>
    </tr>
  </tbody>
</table>

## Query Parameters

Available parameters to query the records associated with your account. All of the parameters may be used together to filter your data for more accurate results.

<table class="table table-striped">
  <thead>
    <tr>
      <th>Parameter</th>
      <th>Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>bounding_box</td>
      <td>string</td>
      <td>Bounding box of the records requested. Format should be: lat,long,lat,long (bottom, left, top, right).</td>
    </tr>
    <tr>
      <td>client_created_before</td>
      <td>integer</td>
      <td>Return only records which were created by the client before the given time.</td>
    </tr>
    <tr>
      <td>client_created_since</td>
      <td>integer</td>
      <td>Return only records which were created by the client after the given time.</td>
    </tr>
    <tr>
      <td>client_updated_before</td>
      <td>integer</td>
      <td>Return only records which were updated by the client before the given time.</td>
    </tr>
    <tr>
      <td>client_updated_since</td>
      <td>integer</td>
      <td>Return only records which were updated by the client after the given time.</td>
    </tr>
    <tr>
      <td>created_before</td>
      <td>integer</td>
      <td>Return only records which were created before the given time.</td>
    </tr>
    <tr>
      <td>created_since</td>
      <td>integer</td>
      <td>Return only records which were created after the given time.</td>
    </tr>
    <tr>
      <td>form_id</td>
      <td>string</td>
      <td>The UUID of the form with which the record is associated. Leaving this blank will query against all of your records.</td>
    </tr>
    <tr>
      <td>newest_first</td>
      <td>integer</td>
      <td>If present, records will be sorted by <code>updated_at</code> date.</td>
    </tr>
    <tr>
      <td>page</td>
      <td>integer</td>
      <td>The page number requested.</td>
    </tr>
    <tr>
      <td>per_page</td>
      <td>integer</td>
      <td>Number of records per page. By default, all requests are paginated to the maximum value of 20,000 items per request.</td>
    </tr>
    <tr>
      <td>project_id</td>
      <td>string</td>
      <td>The UUID of the project with which the record is associated. Leaving this blank will query against all of your records.</td>
    </tr>
    <tr>
      <td>updated_before</td>
      <td>integer</td>
      <td>Return only records which were updated before the given time.</td>
    </tr>
    <tr>
      <td>updated_since</td>
      <td>integer</td>
      <td>Return only records which were updated after the given time.</td>
    </tr>
  </tbody>
</table>

### Filtering Between Dates

Using the before and since filters, you can retrieve records between a date range.

For instance, you can combine the `client_created_since` and `client_created_before` parameters to find the records that were created by your field crew between two dates.

When using the various created and updated time parameters, you must give the date since epoch in seconds: `2012-04-24 15:05:22 -0400 = 1335294322`.

Records will still be ordered according to the `updated_at` column, even when filtering with the other before/since parameters.

## Record Properties

<table class="table table-striped">
  <thead>
    <tr>
      <th>Property</th>
      <th>Type</th>
      <th>Required</th>
      <th>Readonly</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>form_id</td>
      <td>string</td>
      <td>yes</td>
      <td>yes</td>
      <td>The unique form ID (UUID).</td>
    </tr>
    <tr>
      <td>latitude</td>
      <td>number</td>
      <td>yes</td>
      <td>no</td>
      <td>The record latitude in WGS 84 decimal degrees.</td>
    </tr>
    <tr>
      <td>longitude</td>
      <td>number</td>
      <td>yes</td>
      <td>no</td>
      <td>The record longitude in WGS 84 decimal degrees.</td>
    </tr>
    <tr>
      <td>form_values</td>
      <td>object</td>
      <td>yes</td>
      <td>no</td>
      <td>Must be present and an object. The keys of this object must reflect the keys in the form schema. Different form types require different values (see table below).</td>
    </tr>
    <tr>
      <td>status</td>
      <td>string</td>
      <td>no</td>
      <td>no</td>
      <td>Sets the color of the marker.</td>
    </tr>
    <tr>
      <td>version</td>
      <td>number</td>
      <td>no</td>
      <td>yes</td>
      <td>Autoincremented version of the record for history tracking.</td>
    </tr>
    <tr>
      <td>id</td>
      <td>string</td>
      <td>no</td>
      <td>yes</td>
      <td>The UUID of the record.</td>
    </tr>
    <tr>
      <td>created_at</td>
      <td>string</td>
      <td>no</td>
      <td>yes</td>
      <td>Timestamp when the record was synced to the cloud.</td>
    </tr>
    <tr>
      <td>updated_at</td>
      <td>string</td>
      <td>no</td>
      <td>yes</td>
      <td>Timestamp when the record was last synced to or processed while in the cloud.</td>
    </tr>
    <tr>
      <td>client_created_at</td>
      <td>string</td>
      <td>no</td>
      <td>no</td>
      <td>Timestamp when the user first created the record.</td>
    </tr>
    <tr>
      <td>client_updated_at</td>
      <td>string</td>
      <td>no</td>
      <td>no</td>
      <td>Timestamp when the record was last modified by the user.</td>
    </tr>
    <tr>
      <td>created_by</td>
      <td>string</td>
      <td>no</td>
      <td>yes</td>
      <td>The name of user who created the record.</td>
    </tr>
    <tr>
      <td>created_by_id</td>
      <td>string</td>
      <td>no</td>
      <td>yes</td>
      <td>The UUID of user who created the record.</td>
    </tr>
    <tr>
      <td>updated_by</td>
      <td>string</td>
      <td>no</td>
      <td>yes</td>
      <td>The name of user who last updated the record.</td>
    </tr>
    <tr>
      <td>updated_by_id</td>
      <td>string</td>
      <td>no</td>
      <td>yes</td>
      <td>The UUID of user who last updated the record.</td>
    </tr>
    <tr>
      <td>project_id</td>
      <td>string</td>
      <td>no</td>
      <td>no</td>
      <td>The UUID of the <a href="http://www.fulcrumapp.com/help/projects/">project</a> tagged to the record.</td>
    </tr>
    <tr>
      <td>assigned_to</td>
      <td>string</td>
      <td>no</td>
      <td>no</td>
      <td>The name of the user the record is assigned to.</td>
    </tr>
    <tr>
      <td>assigned_to_id</td>
      <td>string</td>
      <td>no</td>
      <td>no</td>
      <td>The UUID of the user the record is assigned to.</td>
    </tr>
    <tr>
      <td>altitude</td>
      <td>number</td>
      <td>no</td>
      <td>yes</td>
      <td>Meters above/below (+/-) sea level.</td>
    </tr>
    <tr>
      <td>speed</td>
      <td>number</td>
      <td>no</td>
      <td>yes</td>
      <td>Meters per second.</td>
    </tr>
    <tr>
      <td>course</td>
      <td>number</td>
      <td>no</td>
      <td>yes</td>
      <td>Only recorded if the device is moving and has no relation to how the device is oriented; course is in degrees (0.0-360); if no course can be determined then 0.0 will be returned.</td>
    </tr>
    <tr>
      <td>horizontal_accuracy</td>
      <td>number</td>
      <td>no</td>
      <td>yes</td>
      <td>Accuracy of the latitude and longitude in meters.</td>
    </tr>
    <tr>
      <td>vertical_accuracy</td>
      <td>number</td>
      <td>no</td>
      <td>yes</td>
      <td>Accuracy of the altitude value in meters.</td>
    </tr>
  </tbody>
</table>

### Form Value Field Types

<table class="table table-striped">
  <thead>
    <tr>
      <th>Field</th>
      <th>Type</th>
      <th>Example</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Text</td>
      <td>string</td>
      <td><code>"Hello world!"</code></td>
    </tr>
    <tr>
      <td>Numeric</td>
      <td>string</td>
      <td><code>"50"</code></td>
    </tr>
    <tr>
      <td>Yes/No</td>
      <td>string</td>
      <td><code>"yes"</code></td>
    </tr>
    <tr>
      <td>Date</td>
      <td>string</td>
      <td><code>"2015"</code></td>
    </tr>
    <tr>
      <td>Time</td>
      <td>string</td>
      <td><code>"13:50"</code></td>
    </tr>
    <tr>
      <td>Barcode</td>
      <td>string</td>
      <td><code>"123456789"</code></td>
    </tr>
    <tr>
      <td>Hyperlink</td>
      <td>string</td>
      <td><code>"http://www.fulcrumapp.com"</code></td>
    </tr>
    <tr>
      <td>Calculation</td>
      <td>string</td>
      <td><code>"6"</code></td>
    </tr>
    <tr>
      <td>Single Choice</td>
      <td>object with the following keys: <code>choice_values</code> (array of selected options) <code>other values</code> (array, empty or with values)</td>
      <td><code>{choice_values: ["Red"],other_values: []}</code></td>
    </tr>
    <tr>
      <td>Multiple Choice</td>
      <td>object with the following keys: <code>choice_values</code> (array of selected options) <code>other values</code> (array, empty or with values)</td>
      <td><code>{choice_values: ["Red","White"],other_values: []}</code></td>
    </tr>
    <tr>
      <td>Classification</td>
      <td>object with the following keys: <code>choice_values</code> (array of selected options) <code>other values</code> (array, empty or with values)</td>
      <td><code>{choice_values: ["Ford","Mustang"],other_values: []}</code></td>
    </tr>
    <tr>
      <td>Address</td>
      <td>address object</td>
      <td><code>{sub_thoroughfare: "360",thoroughfare: "Central Ave",suite: "",locality: "St. Petersburg",sub_admin_area: "",admin_area: "FL",postal_code: "33701",country: "United States"}</code></td>
    </tr>
    <tr>
      <td>Photo</td>
      <td>array of photo objects</td>
      <td><code>[{photo_id:"a8d1df96-44e5-75e9-7312-7e2c5e902496,caption: ""}]</code></td>
    </tr>
    <tr>
      <td>Video</td>
      <td>array of video objects</td>
      <td><code>[{video_id:"712850b4-4de2-4d66-a6cc-034201245b52,caption: ""}]</code></td>
    </tr>
    <tr>
      <td>Audio</td>
      <td>array of audio objects</td>
      <td><code>[{audio_id:"f81d51b5-1ce9-465b-be0b-27f1eca41e2c,caption: ""}]</code></td>
    </tr>
    <tr>
      <td>Signature</td>
      <td>signature object</td>
      <td><code>{timestamp: "2015-07-09T14:54:04Z",signature_id: "9855e3f2-85a5-4b9f-9e62-0b1bbcfef091"}</code></td>
    </tr>
    <tr>
      <td>Repeatable</td>
      <td>array of repeatable objects</td>
      <td><code>[{id:"d67801a0-adc1-6f60-4b0d-ec3a7191b34b",geometry:{type:"Point",coordinates:[-73.123456,42.123456]},form_values: {0129: "Hello world"}}]</code></td>
    </tr>
  </tbody>
</table>

## Validations

The following properties must be included in order to create/update a record object in our system. Any validation errors will return a `422` and an object with a list of validation errors.

### Required Properties

<table class="table table-striped">
  <thead>
    <tr>
      <th>Property</th>
      <th>Type</th>
      <th>Description</th>
      <th>Example</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>form_id</td>
      <td>string</td>
      <td>The unique form ID (UUID).</td>
      <td><code>"7a0c3378-b63a-4707-b459-df499698f23c"</code></td>
    </tr>
    <tr>
      <td>latitude</td>
      <td>number</td>
      <td>The record latitude in WGS 84 decimal degrees.</td>
      <td><code>27.770787</code></td>
    </tr>
    <tr>
      <td>longitude</td>
      <td>number</td>
      <td>The record longitude in WGS 84 decimal degrees.</td>
      <td><code>-82.638039</code></td>
    </tr>
    <tr>
      <td>form_values</td>
      <td>object</td>
      <td>Must be present and an object. The keys of this object must reflect the keys in the form schema. Different form types require different values (see table above).</td>
      <td><code>{"2832": "My string value","8373": {"choice_values": ["My choice value"]}}</code></td>
    </tr>
  </tbody>
</table>

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
