.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The PUT method is used to commit files that are in a sandbox to their final location so that changes to cookbooks will not require re-uploading the same data.

This method has no parameters.

**Request**

.. code-block:: ruby

   PUT /sandboxes/SANDBOX_ID

with a request body that looks something like:

.. code-block:: ruby

   {"is_completed":true}

**Response**

This method has no response body.

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - The request was successful. All checksums have been uploaded and the contents have the proper checksums.
   * - ``400``
     - Bad request. The sandbox has already been committed. Or one (or more) of the checksums were not properly uploaded.
   * - ``404``
     - Not found. The sandbox does not exist.
