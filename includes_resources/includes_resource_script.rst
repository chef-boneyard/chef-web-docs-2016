.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|resource desc script|

The |ruby| script resource is different from the |resource ruby block| resource because |ruby| run with the |resource script| resource is created as a temporary file and executed like other script resources, rather than run inline. Commands that are executed with this resource are (by their nature) not idempotent, as they are typically unique to the environment in which they are run. Use the ``not_if`` and ``only_if`` meta parameters to guard the use of this resource for idempotence.
