---
layout: default
section: expressions
title: "Grab the photo id number"
description: "This expression grabbs the photo id number and adds it to a feature id field."
category: section
---

Assuming the max number of photos is 1, this expression grabs the one photo id in the form and adds it to the feature id field. `$feature_id` and `$photos` are both strings, so you can add them together with a '+'.

Note: Photo elements have two properties. They look like this: ```{"photo_id: "", "caption": "Test caption"}```.

```js
var photo;

if ($photos.length > 0) {
  photo = $photos[0]['photo_id'];
  SETRESULT($feature_id + photo);
} else {
  SETRESULT('')
} 
```
