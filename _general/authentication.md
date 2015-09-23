---
layout: default
section: general
order: 2
title: "Authentication"
description: "Help with authentication when using the Fulcrum API."
category: section
---

Using a Fulcrum account with access to the API allows you to generate API keys bound to your user account.

API calls are authenticated with an API Key (token) that is provided with the request. The API key can be passed as an HTTP request header or as a parameter in the query string.

## Obtaining your API Key

The API Key is unique for each organization you have a membership with.

You can find the API Key through the Settings menu on your profile page (it is the second to last option on the right-side tabs in the Settings menu).

Alternatively, you can retrieve the API token for any organization you are a member of by using the `/api/v2/users` endpoint and HTTP Basic authentication in your terminal.

`curl -u email:password https://api.fulcrumapp.com/api/v2/users.json`

If you have at least one API Key, you can use it to retrieve the keys for your other organizations.

`curl -H "X-ApiToken: myapikey" https://api.fulcrumapp.com/api/v2/users.json`

**Note:** The API Key can be used to access and modify all data which you have permission to access within that organization, so be sure to keep the API key private. Only share it with others if you want them to have that access. It is bad practice to put API Keys in source code, especially if it’s publicly available. If you think your API Key has been compromised, you can generate a new one from your Fulcrum account API settings page.

## HTTP Request Header

You can send the API Key as an HTTP request header.

`X-ApiToken = myapikey`

Test your API Key from a command prompt using cURL:

`curl -H "X-ApiToken: myapikey" https://api.fulcrumapp.com/api/v2/forms`

## Query String Parameter

You can send the API Key as a query string parameter. This can be useful when you can’t set an HTTP header for your request.

`token=myapikey`

Test your API Key from a command prompt using cURL.

`curl "https://api.fulcrumapp.com/api/v2/forms?token=myapikey"`
