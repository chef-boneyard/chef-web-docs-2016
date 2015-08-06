.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

For services started using |upstart| (the |unix systemv|-compatible init system used by recent versions of |ubuntu| and other distributions), their environment can be altered using ``env``:

.. code-block:: ruby

   env IMPORTANT_VAR='value'
