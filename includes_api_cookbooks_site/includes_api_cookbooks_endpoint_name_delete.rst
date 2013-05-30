.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``DELETE`` method is used to delete a cookbook. 

This method has no parameters.

**Request**

.. code-block:: xml

   DELETE /cookbooks/cookbook_name

**Response**

The response will return something like the following:

.. code-block:: ruby

   {
     response_placeholder
   }

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - |response code 200 ok| The cookbook was deleted.
   * - ``400``
     - |response code 400 unsuccessful| The requested cookbook does not exist. For example:
       ::

          {
             "error_messages":
             ["Resource does not exist"],
             "error_code": "NOT_FOUND"
          }