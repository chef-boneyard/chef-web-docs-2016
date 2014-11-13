.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``POST`` method is used to alert |reporting| about the end of a |chef client| run.

This method has the following parameters:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Parameter
     - Description
   * - ``action``
     - Required. The state of the |chef client| run: ``end``.
   * - ``data``
     - Required. A |json| object that details the exceptions that were reported during the |chef client| run. Each exception has a ``class``, ``message``, ``backtrace``, and ``description`` attribute. For example:

       .. code-block:: javascript

          data : {
            exception : {
              class: <string>
              message: <string>
              backtrace: <string>
              description: { }
            }
          }
   * - ``end_time``
     - Required. The time at which the |chef client| run ended.
   * - ``resources``
     - Required. An array of resources that were modified during the |chef client| run. Each resource has a ``type``, ``name``, ``cookbook_version``, ``cookbook_name``, ``id``, ``duration``, ``before``, ``after``, ``delta``, and ``result`` attribute.
   * - ``run_id``
     - Required. The unique identifier (UUID) for the |reporting| run. For example: ``550e4500-e22b-4ad4-a716-446659876500``.
   * - ``run_list``
     - Required. The run-list that was used during the |chef client| run.
   * - ``status``
     - Required. The outcome of the |chef client| run. Possible values: ``success`` or ``failure``.
   * - ``start_time``
     - Required. The time at which the |chef client| run started.
   * - ``total_res_count``
     - Required. The number of resources added to the resource collection for the |chef client| run.

**Request**

.. code-block:: xml

   POST /organizations/ORG/reports/nodes/NODE/runs/RUNID

with a request body that looks something like:

.. code-block:: javascript

   {
     "action" : string,
     "status" : string,
     "data" : { "exception" : { 
                              "class" : class-string, 
                              "message" : message-string, 
                              "backtrace" : backtrace-string, 
                              "description" : "description-string" 
                              } 
	          },
     "run_list" : string,
     "total_res_count" : integer
     "resources" : {
                   "type" : string,
                   "name" : string,
                   "id" : string,
                   "cookbook_name" : string,
                   "cookbook_version" : string,
                   "duration" : numeric string - milliseconds,
                   "before" : JSON
                   "after" : JSON
                   "result" : string,
                   "delta" : string
                   }
   }

**Response**

The response will return something like the following:

.. code-block:: javascript

   {
     
   }

**Response Codes**

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``201``
     - |response code 201 created|
   * - ``404``
     - |response code 404 not found|
