.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``GET`` method is used to get the current server status.

This method has no parameters.

**Request**

.. code-block:: xml

   GET /_status

**Response**

The response will return something similar to:

.. code-block:: ruby

   {
     "status": "it's alive"
   }

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - |response code 200 ok|
