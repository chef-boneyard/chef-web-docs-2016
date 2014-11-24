.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``GET`` method is used to get information about the specified alias.

This method has no parameters.

**Request**

.. code-block:: xml

   GET /organizations/NAME/aliases/ID
   
**Response**

The response is similar to:

.. code-block:: javascript

   {
     "type": "object",
     "properties": {
       "id": {
         ...
       },
       "name": {
         ...
       },
       "org_name": {
         ...
       },
       "modified_by": {
         ...
       },
       "modified_at": {
         ...
       },
       "notification_type": {
         ...
       },
       "delivery_options": {
         ...
       }
     },
     "required": [ "notification_type", "modified_by", "name" ],
     "definitions": {
       "hipchat": {
         ...
       },
       "http": {
         ...
       },
       "smtp": {
         ...
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
