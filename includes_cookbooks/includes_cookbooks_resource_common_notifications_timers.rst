.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following timers can be used to define when a notification is triggered:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Timer
     - Description
   * - ``:restart``
     - Use to restart a service or application.
   * - ``:delayed``
     - Use to specify that a notification should be queued up and then executed at the very end of a |chef| run.
   * - ``:immediately``
     - Use to specify that a notification be run immediately.