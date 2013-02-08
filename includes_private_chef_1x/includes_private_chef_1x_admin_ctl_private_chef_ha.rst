.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following commands are available for |private chef| deployments that are using the HA architecture:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Command
     - Description
   * - ``master-recover``
     - When running in a High Availability cluster, this command will force the server to attempt to become the HA Master. Should usually be run in tandem with |private chef ctl| backup-recover on the back-end peer, unless it is no longer available.
   * - ``backup-recover``
     - The opposite of |private chef ctl| ``master-recover`` because it forces the server to attempt to become the HA Backup. If run on both back-end servers, will put the cluster in a state where no server holds the |drbd| resource.
