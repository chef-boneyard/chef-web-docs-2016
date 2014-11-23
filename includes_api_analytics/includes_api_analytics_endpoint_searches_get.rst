.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``GET`` method is used to get a list of searches, optionally by page number.

This method has the following parameters:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Parameter
     - Description
   * - ``page``
     - The page number to return.

**Request**

.. code-block:: xml

   GET /searches
   
**Response**

The response is similar to:

.. code-block:: javascript

   {
     "$schema": "http://json-schema.org/draft-04/schema",
     "type": "array",
     "items": {
       "$ref": "#/definitions/search"
     },
     "definitions": {
       "search": {
         "$schema": "http://json-schema.org/draft-04/schema",
         "type": "object",
         "properties": {
           "description": {
             "type": "string"
             },
           "id": {
             "type": "integer",
             "format": "uint"
             },
           "query": {
             "type": "string",
             "format": "search-query"
           }
         }
       }
     }
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
