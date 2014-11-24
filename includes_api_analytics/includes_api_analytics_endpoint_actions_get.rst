.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``GET`` method is used to get a list of actions for the named organization. Use query parameters to filter the list of audits.

This method has the following parameters:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Parameter
     - Description
   * - ``before``
     - The time before which audit data is returned. For example: ``2014-11-14T18:50:09.155Z``.
   * - ``page``
     - The page number to be returned.
   * - ``since``
     - The time after which audit data is returned. For example: ``2014-11-14T18:40:09.155Z``.

**Request**

.. code-block:: xml

   GET /organizations/NAME/actions
   
**Response**

The response is similar to:

.. code-block:: javascript

   {
     
   }

**Response Codes**

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - |response code 200 ok|
   * - ``403``
     - Unauthorized.
   * - ``500``
     - Internal error.
