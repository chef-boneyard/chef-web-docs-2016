.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |lwrp windows reboot| lightweight resource is used to set required data in ``node.run_state`` to notify ``WindowsRebootHandler`` that a reboot is required. If a |chef client| run completes successfully, a reboot will occur if the ``WindowsRebootHandler`` is properly registered as a report handler. As an action of ``:request`` will cause a node to reboot every |chef client| run, this resource is usually notified by other resources. For example, notifying this resource after a package has been installed.

.. note:: ``WindowsRebootHandler`` is an attribute that is defined in the ``windows`` cookbook.
