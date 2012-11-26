.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The PUT method is used to commit files that are in a sandbox to their final location so that changes to cookbooks will not require re-uploading the same data.

This method has no parameters.

**Request**

.. code-block:: xml

   PUT /sandboxes/ID

with a request body that looks something like:

.. code-block:: javascript

   {"is_completed":true}

**Response**

This method has no response body.

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - |response code 200 ok|
   * - ``400``
     - |response code 400 bad request|
   * - ``404``
     - |response code 404 not found|
