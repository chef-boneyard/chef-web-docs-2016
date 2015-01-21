.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following fields are available for the ``run_start`` message type:

.. list-table::
   :widths: 120 60 320
   :header-rows: 1

   * - Field
     - Type
     - Description
   * - ``chef_server_fqdn``
     - string
     - The |fqdn| for the |chef server| against which the instance is running.
   * - ``data``
     - object
     - The payload that contains the entire data request.
   * - ``id``
     - string
     - The internal message identifier for the |chef client| run.
   * - ``message_type``
     - string
     - The message type.
   * - ``message_version``
     - string
     - The message version.
   * - ``node_name``
     - string
     - The name of the node on which the |chef client| run occurred.
   * - ``organization_name``
     - string
     - The name of the organization to which the node belongs.
   * - ``run_id``
     - string
     - The identifier for the |chef client| run.
   * - ``start_time``
     - string
     - The ISO timestamp at which the |chef client| run started.
