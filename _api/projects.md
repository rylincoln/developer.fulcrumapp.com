---
layout: default
section: api
order: 6
title: "Projects"
description: "Create, read, update, or delete projects"
category: section
img: /assets/img/guides/
difficulty: advanced
menu:
  - "Endpoints": endpoints
  - "Query Parameters": query-parameters
  - "Properties": project-properties
  - "Validations": validations
  - "Notes": notes
  - "Examples": examples
---

The Projects API gives you access to the [projects](/help/projects/) within your Fulcrum account. Projects can be used to separate your data into different groups for access, filtering, and exporting purposes.

## Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | /api/v2/projects.json | Fetch all projects. |
| GET | /api/v2/projects/**:id**.json | Fetch a single project. |
| POST | /api/v2/projects.json | Create a new project. |
| PUT | /api/v2/projects/**:id**.json | Update a single project. |
| DELETE | /api/v2/projects/**:id**.json | Delete a single project. |

## Query Parameters

| Parameter | Type | Description |
|-----------|------|-------------|
| page | integer | The page number requested. |
| per_page | integer | Number of records per page. By default, all requests are paginated to the maximum value of 20,000 items per request. |

## Project Properties

| Property | Type | Required | Readonly | Description |
|----------|------|----------|----------|-------------|
| name | string | yes | no | The name of the project. |
| description | string | no | no | Optional project description. |
| id | string | no | yes | The UUID of the project. |
| created_at | string | no | yes | Timestamp when the project was created. |
| updated_at | string | no | yes | Timestamp when the project was last updated. |

## Validations

The following properties must be included in order to create/update a project object in our system. Any validation errors will return a `422` and an object with a list of validation errors.

**Required Properties**

| Property | Type | Description | Example |
|----------|------|-------------|---------|
| name | string | The name of the project. | `"Pinellas County"` |

Example validation response if `name` is not included:

```
{
  "project": {
    "errors": {
      "name": ["can't be blank"]
    }
  }
}
```

## Notes

* The entire project object is required when making an update. Omitting fields with existing data will result in data loss! The typical workflow for updating an existing project is to fetch the project object, modify it, and then submit the PUT request.

## Examples

All examples take advantage of [jQuery](http://jquery.com/) to perform asynchronous HTTP (Ajax) requests.

### Valid project response

```
{
  "project": {
    "name": "Pinellas County",
    "description": "For records in Pinellas County",
    "id": "60786571-46b4-43b8-8f49-7d8f0f45987e",
    "created_at": "2013-10-29T15:49:09Z",
    "updated_at": "2014-11-18T15:23:48Z"
  }
}
```

### Get all projects

```
$.ajax({
  type: "GET",
  url: "https://api.fulcrumapp.com/api/v2/projects.json",
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

### Get a single project by ID

```
$.ajax({
  type: "GET",
  url: "https://api.fulcrumapp.com/api/v2/projects/my-project-id.json",
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

### Create a new project

```
$.ajax({
  type: "POST",
  url: "https://api.fulcrumapp.com/api/v2/projects.json",
  data: JSON.stringify({
      "project": {
        "name": "Pinellas County",
        "description": "For records in Pinellas County"
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

### Update a project

```
$.ajax({
  type: "PUT",
  url: "https://api.fulcrumapp.com/api/v2/projects/my-project-id.json",
  data: JSON.stringify({
    "project": {
      "name": "Pinellas County, FL",
      "description": "For records in Pinellas County, FL"
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

### Delete a project

```
$.ajax({
  type: "DELETE",
  url: "https://api.fulcrumapp.com/api/v2/projects/my-project-id.json",
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
