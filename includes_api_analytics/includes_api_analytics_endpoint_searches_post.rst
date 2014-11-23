.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``POST`` method is used to create a new rule for the named organization.

This method has no parameters.

**Request**

.. code-block:: xml

   POST /searches

with a request body similar to:

.. code-block:: javascript

   {
     "type": "object",
     "properties": {
       "active": {
         "type": "boolean"
       },
       "name": {
         "description": "Rule name",
         "type": "string"
       },
       "modified_by": {
         "description": "user last modified",
         "type": "string"
       },
       "rule": {
         "description": "text of rule",
         "type": "string"
       },
       "with": {
         "type": "object",
         "properties": {
           "priority": {
             "type": "integer"
           }
         },
         "required": ["priority"]
       }
     },
     "required": [ "rule", "modified_by", "with", "active"]
   }
   
**Response**

The response is similar to:

.. code-block:: javascript

   {
     
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
