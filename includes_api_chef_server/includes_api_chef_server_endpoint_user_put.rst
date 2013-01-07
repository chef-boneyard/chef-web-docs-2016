.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The PUT method is used to update a specific user. If values are not specified for the PUT method, the |chef server| will use the existing values rather than assign default values.

This method has no parameters.

**Request**

.. code-block:: xml

   PUT /user/NAME

with a request body that looks something like:

.. code-block:: javascript

   xxxxx

where ``xxxxx`` is xxxxx.

**Response**

The response will return something like the following:

.. code-block:: javascript

   xxxxx

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
