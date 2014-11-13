.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``DELETE`` method is used to delete a pending invitation.

This method has no parameters.

**Request**

.. code-block:: xml

   DELETE /organizations/ORG_NAME/association_requests/ID

This method has no request body.

**Response**

The response will return something like the following:

.. code-block:: javascript

   {
   
   }

where xxxxx.

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
