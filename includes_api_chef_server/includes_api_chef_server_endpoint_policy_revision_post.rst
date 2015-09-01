.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``POST`` method is used to create a new policy revision.

This method has no parameters.

**Request**

.. code-block:: xml

   POST /organizations/NAME/policies/NAME/revisions

with a request body similar to:

.. code-block:: javascript

   xxxxx

**Response**

The response is similar to:

.. code-block:: javascript

   xxxxx

**Response Codes**

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``201``
     - |response code 200 ok|
   * - ``400``
     - |response code 400 bad request|
   * - ``401``
     - |response code 401 unauthorized|
   * - ``403``
     - |response code 403 forbidden|
   * - ``409``
     - |response code 409 conflict|
   * - ``413``
     - |response code 413 entity_too_large|
