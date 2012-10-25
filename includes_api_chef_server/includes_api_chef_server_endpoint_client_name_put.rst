.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The PUT method is used to update a specific |chef api client|.

This method has no parameters.

**Request**

.. code-block:: ruby

   PUT /clients/CLIENT_NAME

with a request body that looks something like:

.. code-block:: ruby

   {
     "name": "monkeypants",
     "private_key": true,
     "admin": false
   }

where ``private_key`` (when ``true``) will generate a new RSA private key for the |chef api client|. If ``admin`` is set to ``true`` the |chef api client| will be promoted to an admin |chef api client|.

**Response**

The response will return something like the following:

.. code-block:: ruby

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
     - The request was successful.
   * - ``401``
     - Unauthorized. The user which made the request is not a recognized user.
   * - ``403``
     - Forbidden. The user which made the request is not authorized to update the |chef api client|.
   * - ``404``
     - Not found. The |chef api client| does not exist.
