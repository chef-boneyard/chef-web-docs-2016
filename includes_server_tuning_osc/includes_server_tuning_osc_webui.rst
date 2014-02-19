.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following setting is often modified from the default as part of the tuning effort for the |service webui| service. 

Commonly tuned values include:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``chef_server_webui['worker_processes']``
     - |worker_processes| This setting should be increased or decreased based on the number of users in an organization who use the |chef server| web user interface. The default value is ``2``.
