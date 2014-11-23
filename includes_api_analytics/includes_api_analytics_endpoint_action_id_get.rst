.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``GET`` method is used to get the details for the specified action.

This method has no parameters.

**Request**

.. code-block:: xml

   GET /actions/ID

**Response**

The response is similar to:

.. code-block:: javascript

   {
     "$schema": "http://json-schema.org/draft-04/schema#",
     "title": "ActionSchema",
     "description": "Analytics - action schema",
     "type": "object",
     "properties": {
       "id": {
         "description": "Globally Unique ID for this message",
         "type": "string",
         "pattern": "...",
         "format": "uuid"
       },
       "tags": {
         "type": "array",
           "items": {
             "type": "string",
           "format": "action-tags"
           },
           "uniqueItems": true
         },
         "type": {
           ...
         },
         "recorded_at": {
           "description": "It is the ISO timestamp when the action happened",
           "pattern": "^[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-5][0-9]:[0-9]{2}Z$",
           "type": "string",
           "format": "date-time"
         },
         "remote_hostname": {
           "description": "The remote hostname which initiated the action",
           "type": "string",
           "oneOf": [
             { "format": "hostname" },
             { "format": "ipv4" },
             { "format": "ipv6" }
           ]
         },
         "remote_request_id": {
           ...
         },
         "request_id": {
           ...
         },
         "service_hostname": {
           ...
         },
       ...
     },
     "required": [
       "id",
       "tags",
       "recorded_at",
       "remote_hostname",
       "remote_request_id",
       "request_id",
       "service_hostname",
       "task",
       "endpoint",
       "user_agent",
       "requestable",
       "entity"
     ]
   }

**Response Codes**

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - |response code 200 ok|
   * - ``403``
     - Unauthorized.
   * - ``500``
     - Internal error.
