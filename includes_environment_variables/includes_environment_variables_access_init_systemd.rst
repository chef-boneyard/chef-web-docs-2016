.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

For services started using systemd (the System V-compatible init system by the recent versions of Fedora and other distributions), their environment can be altered using the ``Environment`` or ``EnvironmentFile`` options:

.. code-block:: ruby

   Environment="IMPORTANT_VAR='value'"

If the init script provided by the package does not include the necessary environment variables, you can manage your altered init script using the |chef| |resource template| resource.
