.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``PUT`` method is used to create an organization.

This method has no parameters.

**Request**

.. code-block:: xml

   PUT /organizations/ORG_NAME

with a request body that looks something like:

.. code-block:: javascript

   {
     "name": "chef",
     "full_name"=>"Chef Software, Inc",
   }

**Response**

The response will return the |json| for the updated organization.

**Response Codes**

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - |response code 200 ok|
   * - ``400``
     - |response code 400 bad request|
   * - ``403``
     - |response code 403 forbidden|
   * - ``410``
     - Gone. Unable to update private key.
