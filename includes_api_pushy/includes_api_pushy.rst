.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |api pushy| is used to create jobs and retrieve status using |pushy|, a tool that pushes jobs against a set of nodes in the |chef| organization. All requests are signed using the |api chef server| and the validation key on the workstation from which the requests are made. All commands are sent to the |chef server| using the ``knife exec`` subcommand.

.. VERIFY: The knife exec subcommand.
