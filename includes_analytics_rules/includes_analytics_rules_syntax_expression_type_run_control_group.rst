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
     - The globaly-unique identifier for this message. For example: ``"12345678-9012-3456-7890-12345678901211"``.
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
     - The short name of the organization to which the node belongs. For example: ``"chef"``.
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
   * - ``status``
     - string
     - The status of the control object.

