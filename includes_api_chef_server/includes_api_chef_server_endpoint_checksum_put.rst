.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The PUT method is used to add a checksum to a sandbox.

This method has no parameters.

**Request**

.. code-block:: ruby

   PUT /sandboxes/SANDBOX_ID/CHECKSUM

where ``CHECKSUM`` is the file which contains the checksum.

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
     - |response code 400 checksum|
