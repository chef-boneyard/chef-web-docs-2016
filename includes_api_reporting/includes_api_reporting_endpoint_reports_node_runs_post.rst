.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``POST`` method is used to alert |reporting| about the start of a |chef client| run.

This method has the following parameters:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Parameter
     - Description
   * - ``action``
     - Required. The state of the |chef client| run: ``start``.
   * - ``run_id``
     - Required. The unique identifier (UUID) for the |reporting| run. For example: ``550e4500-e22b-4ad4-a716-446659876500``.
   * - ``start_time``
     - Required. The time at which the |chef client| run started.

**Request**

.. code-block:: xml

   POST /organizations/ORG/reports/nodes/NODE/runs

**Response**

This method has no response body.

**Response Codes**

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - |response code 200 ok|
   * - ``404``
     - |response code 404 not found|
