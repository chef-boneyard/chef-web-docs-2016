.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:cancel``
     - Indicates to remove a reboot request from ``node.run_state``. This will cancel all previously-requested reboots.
   * - ``:request``
     - Use to request a reboot at the completion of a successful |chef client| run. This action requires ``WindowsRebootHandler`` to be registered as a report handler.