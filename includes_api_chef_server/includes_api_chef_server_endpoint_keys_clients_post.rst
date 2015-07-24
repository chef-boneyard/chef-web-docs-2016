.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``POST`` method is used to add a key for the specified client.

This method has no parameters.

**Request**

.. code-block:: xml

   POST /organizations/NAME/client/CLIENT/keys

with a request body similar to:

.. code-block:: javascript

   {
     "name" : "key1",
     "public_key" : "-------- BEGIN PUBLIC KEY ----and a valid key here",
     "expiration_date" : "infinity"
   }
   
**Response**

The response is similar to:

.. code-block:: javascript

   {
     "uri" : "https://chef.example/organizations/example/clients/client1/keys/key1"
   }

**Response Codes**

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``201``
     - |response code 201 created|
   * - ``401``
     - |response code 401 unauthorized|
   * - ``403``
     - |response code 403 forbidden|
   * - ``404``
     - |response code 404 not found|
