.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following fields are available for the ``run_control`` message type:

.. list-table::
   :widths: 120 60 320
   :header-rows: 1

   * - Field
     - Type
     - Description
   * - ``context``
     - array
     - 
   * - ``control_group``
     - object
     - 
   * - ``control_group.control_group_id``
     - string
     - The identifier of the control group object.
   * - ``control_group.name``
     - string
     - The name of the control group.
   * - ``control_group.number_failed``
     - integer
     - The number of tests within the control group that failed.
   * - ``control_group.number_succeeded``
     - integer
     - The number of tests within the control group that passed.
   * - ``control_group.status``
     - string
     - The status of the control group.
   * - ``details``
     - ["string", "null"] 
     - Details about the control object.
   * - ``id``
     - type
     - The globaly-unique identifier for this message. For example: ``"12345678-9012-3456-7890-12345678901211"``.
   * - ``name``
     - string
     - The name of the control object.
   * - ``organization_name``
     - string
     - The short name of the organization to which the node belongs. For example: ``"chef"``.
   * - ``resource_name``
     - ["string", "null"]
     - The name of the resource in which the control object is present.
   * - ``resource_type``
     - ["string", "null"]
     - The resource type for the control object.
   * - ``run``
     - object
     - 
   * - ``run.chef_server_fqdn``
     - string
     - The |fqdn| for the |chef server| against which the instance is running. For example: ``"api.chef.io"``.
   * - ``run.end_time``
     - string
     - The ISO timestamp at which the |chef client| run finished. For example: ``"2014-06-05T10:39:43Z"``.
   * - ``run.node_name``
     - string
     - The name of the node on which the |chef client| run occurred. For example: ``"grantmc01-abc"``.
   * - ``run.run_id``
     - string
     - The internal message identifier for the |chef client| run. For example: ``"12345678-9012-3456-7890-12345678901211"``.
   * - ``run.start_time``
     - string
     - The ISO timestamp at which the |chef client| run started. For example: ``"2014-06-05T10:34:35Z"``.
   * - ``sequence_number``
     - integer
     - The sequence number at which the resource converged.
   * - ``status``
     - string
     - The status of the control object.
