.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``GET`` method is used to get a list of audits for the named organization. Use query parameters to filter the list of audits.

This method has the following parameters:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Parameter
     - Description
   * - ``before``
     - The time before which audit data is returned. For example: ``2014-11-14T18:50:09.155Z``.
   * - ``level``
     - The audit level. Possible values: ``error``, ``info``, and ``warn``. Use a comma to separate multiple audit levels. For example: ``error`` or ``warn, info``.
   * - ``page``
     - The page number to be returned.
   * - ``since``
     - The time after which audit data is returned. For example: ``2014-11-14T18:40:09.155Z``.
   * - ``type``
     - The types of events that trigger audits: ``action``, ``control``, ``control_group``, ``run``, ``run_converge``, or ``run_resource``. Use a comma to separate multiple types. For example: ``run_converge`` or ``action, run``.

**Request**

.. code-block:: xml

   GET /organizations/NAME/audits
   
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
