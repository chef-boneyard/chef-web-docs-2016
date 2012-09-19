.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |resource execute| resource is used to execute a command. Commands that are executed with this resource are (by their nature) not idempotent, as they are typically unique to the environment in which they are run. Use the ``not_if`` and ``only_if`` meta parameters to guard the use of this resource for idempotence.
