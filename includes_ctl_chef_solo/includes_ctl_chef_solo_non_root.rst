.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef solo| may be run as a non-root user. For example, the ``sudoers`` can be updated similar to:

.. code-block:: ruby

   # chef-solo privilege specification
   chef ALL=(ALL) NOPASSWD: /usr/bin/chef-solo

where ``chef`` is the name of the non-root user. This allows |chef solo| to run any command on the node without requiring a password.