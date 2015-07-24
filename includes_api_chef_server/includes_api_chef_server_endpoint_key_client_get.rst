.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``GET`` method is used to return details for a specific key for a specific client.

This method has no parameters.

**Request**

.. code-block:: xml

   GET /organizations/NAME/client/CLIENT/keys/KEY

**Response**

The response is similar to:

.. code-block:: javascript

   {
     "name" : "default",
     "public_key" : "-------- BEGIN PUBLIC KEY --------- ...",
     "expiration_date" : "2020-12-31T00:00:00Z"
   }

**Response Codes**

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - |response code 200 ok|
   * - ``401``
     - |response code 401 unauthorized|
   * - ``403``
     - |response code 403 forbidden|
   * - ``404``
     - |response code 404 not found|
