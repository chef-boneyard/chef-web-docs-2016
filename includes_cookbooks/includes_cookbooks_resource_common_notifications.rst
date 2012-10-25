.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following notifications can be used with any resource:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Notification
     - Description
   * - ``notifies``
     - Use to notify another resource to take an action if this resource's state changes for any reason.
   * - ``subscribes``
     - Use to take action on this resource if another resource's state changes. This is similar to ``notifies``, but reversed.