.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following notifications can be used with any resource. Notifications are used in the same way as attributes and are processed during the execution phase of the |chef client| run:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Notification
     - Description
   * - ``notifies``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |notifies|
   * - ``subscribes``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |subscribes|
