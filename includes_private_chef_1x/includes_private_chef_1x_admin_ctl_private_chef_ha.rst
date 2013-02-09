.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following commands are available for |chef private| deployments that are using the High Availability topology:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Command
     - Description
   * - ``master-recover``
     - Use this command to force a |chef private| server to attempt to become the master server. This command is typically run in tandem with ``private-chef-ctl backup-recover`` on the back-end peer, unless the back-end peer is no longer available.
   * - ``backup-recover``
     - Use this command to force a |chef private| server to attempt to become the backup server. This is the opposite of ``private-chef-ctl master-recover``. 
       .. warning:: If this command is run on both back-end servers, it will put the back-end cluster into a state where no server holds the |drbd| resource.