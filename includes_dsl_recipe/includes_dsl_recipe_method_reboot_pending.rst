.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``reboot_pending?`` method can be used in a recipe to test if a |windows| system needs a reboot, or is expected to reboot. ``reboot_pending?`` returns ``true`` when the node needs a reboot and uses the following |dsl recipe| methods to test for this situation:

* ``registry_value_exists?`` tests for files that cannot be updated because they are in use
* ``registry_key_exists?`` tests for reboots that are required because of updates to |windows|, updates driven by component-based servicing, or those forced by security updates and hotfixes

The syntax for the ``reboot_pending?`` method is as follows:

.. code-block:: ruby

   reboot_pending?



