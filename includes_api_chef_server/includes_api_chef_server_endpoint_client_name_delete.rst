.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The DELETE method is used to remove a specific |chef api client|.

This method has no parameters.

**Request**

.. code-block:: ruby

   DELETE /clients/CLIENT_NAME

This method has no request body.

**Response**

This method has no response body.

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
     - Forbidden. The user which made the request is not authorized to delete the |chef api client|.
   * - ``404``
     - Not found. The |chef api client| does not exist.
