.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The PUT method is used to update a specific |chef api client|.

This method has no parameters.

**Request**

.. code-block:: xml

   PUT /clients/CLIENT_NAME

with a request body that looks something like:

.. code-block:: javascript

   {
     "name": "monkeypants",
     "private_key": true,
     "admin": false
   }

where ``private_key`` (when ``true``) will generate a new RSA private key for the |chef api client|. If ``admin`` is set to ``true`` the |chef api client| will be promoted to an admin |chef api client|.

**Response**

The response will return something like the following:

.. code-block:: javascript

   {
     "name": "monkeypants",
     "private_key": "RSA PRIVATE KEY",
     "admin": true
   }

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
