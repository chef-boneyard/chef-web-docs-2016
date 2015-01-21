.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following fields are available for the ``run_control_group`` message type:

.. list-table::
   :widths: 120 60 320
   :header-rows: 1

   * - Field
     - Type
     - Description
   * - ``error``
     - string
     - The error reported by the |chef client|.
   * - ``id``
     - string
     - The globaly-unique identifier for this message.
   * - ``message_type``
     - string
     - The message type.
   * - ``message_version``
     - string
     - The message version.
   * - ``name``
     - string
     - The name of the control group object.
   * - ``number_failed``
     - integer
     - The number of tests within the control group that failed.
   * - ``number_succeeded``
     - integer
     - The number of tests within the control group that passed.
   * - ``organization_name``
     - string
     - The name of the organization to which the node belongs.
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
   * - ``status``
     - string
     - The status of the control object.

