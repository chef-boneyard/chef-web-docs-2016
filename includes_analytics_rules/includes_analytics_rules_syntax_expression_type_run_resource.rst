.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following fields are available for the ``run_resource`` message type:

.. list-table::
   :widths: 120 60 320
   :header-rows: 1

   * - Field
     - Type
     - Description
   * - ``converge``
     - object
     - 
   * - ``converge.end_time``
     - string
     - The ISO timestamp at which the |chef client| run finished.
   * - ``converge.id``
     - string
     - The internal message identifier for the |chef client| run.
   * - ``converge.organization_name``
     - string
     - The name of the organization to which the node belongs.
   * - ``converge.run_list``
     - array
     - The run-list used during the |chef client| run.
   * - ``converge.start_time``
     - string
     - The ISO timestamp at which the |chef client| run started.
   * - ``converge.status``
     - string
     - The status of the |chef client| run.
   * - ``converge.total_resource_count``
     - integer
     - The total number of resources that were converged during the |chef client| run.
   * - ``converge.updated_resource_count``
     - integer
     - The total number of resources that were updated during the |chef client| run.
   * - ``cookbook_name``
     - string
     - The name of the cookbook that initiated the changes made by this |chef client| run.
   * - ``cookbook_version``
     - string
     - The version of the cookbook initiated the changes made by this |chef client| run.
   * - ``delta``
     - string
     - The difference between the intial and final value of resource.
   * - ``duration``
     - string
     - The duration of the |chef client| run.
   * - ``final_state``
     - object
     - The final state of the resource.
   * - ``id``
     - string
     - The internal message identifier for the |chef client| run.
   * - ``message_type``
     - string
     - The message type.
   * - ``message_version``
     - string
     - The message version.
   * - ``resource_id``
     - string
     - The resource identifier.
   * - ``resource_name``
     - string
     - The name of the resource.
   * - ``resource_result``
     - string
     - The resource result.
   * - ``run``
     - object
     - 
   * - ``run.chef_server_fqdn``
     - string
     - The |fqdn| for the |chef server| against which the instance is running.
   * - ``run.end_time``
     - string
     - The ISO timestamp at which the |chef client| run finished.
   * - ``run.node_name``
     - string
     - The name of the node on which the |chef client| run occurred.
   * - ``run.run_id``
     - string
     - The identifier for the |chef client| run.
   * - ``run.start_time``
     - string
     - The ISO timestamp at which the |chef client| run started.
   * - ``sequence_number``
     - integer
     - The sequence number at which the resource converged.
