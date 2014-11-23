.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``POST`` method is used to create a new search item.

This method has no parameters.

**Request**

.. code-block:: xml

   POST /searches/ID

with a request body similar to:

.. code-block:: javascript

   {
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
