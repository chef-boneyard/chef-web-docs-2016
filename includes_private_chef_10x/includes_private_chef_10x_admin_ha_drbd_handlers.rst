.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|drbd| configuration allows for custom handlers when a split-brain event happens. The basic handler sends a notification email to a configurable email address so the issue can be investigated.

The ``drbd.conf`` used with |chef private| file specifies other built-in actions that will be taken in certain fault scenarios:

.. code-block:: bash

   after-sb-0pri discard-younger-primary;
   after-sb-1pri discard-secondary;
   after-sb-2pri call-pri-lost-after-sb;

What these mean:

* after-sb-0pri: ``split-brain`` has been detected, and neither node is Primary. The action ``discard-younger-primary`` will roll back changes made on the last host to have been Primary.
* after-sb-1pri: ``split-brain`` has been detected, and only one node thought it was Primary when the ``split-brain`` happened. In this configuration, ``discard-secondary`` will continue operations on the Primary and assume the Secondary was lost.
* after-sb-2pri: ``split-brain`` has been detected, and at the time both nodes thought they were Primary. In this instance, ``call-pri-lost-after-sb`` will try to apply the ``discard-younger-primary`` from the ``0pri`` configuration to determine which host should be Primary. The other host takes action to become Secondary.