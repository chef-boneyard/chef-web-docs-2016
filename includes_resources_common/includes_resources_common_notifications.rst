.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following notifications can be used with any resource:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Notification
     - Description
   * - ``notifies``
     - Use to specify that another resource should take action when this resource's state changes.
   * - ``subscribes``
     - Use to specify that a resource will listen to another resource, and then take action when that resource's state changes.

Notifications are processed during the execution phase of the |chef client| run.

