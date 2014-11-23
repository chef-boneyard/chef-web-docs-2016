.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``GET`` method is used to get payload details for the specified action.

This method has no parameters.

**Request**

.. code-block:: xml

   GET /actions/ID/payload
   
**Response**

The response is similar to:

.. code-block:: javascript

   {
     "$schema": "http://json-schema.org/draft-04/schema",
     "type": "object",
     "properties": {
       "result": {
         "description": "The value of the result",
         "enum": [ "unauth" ]
       },
       "msg": {
         "type": "string"
       }
     },
     "required": [ "result" ]
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
