.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server delete`` argument is used to delete one or more instances that are running in the |google compute engine| cloud. To find a specific cloud instance, use the ``knife google server list`` argument. Use the ``knife node delete`` and ``knife client delete`` sub-commands to delete associated node and client objects (if required).

This argument has the following syntax::

   knife google server delete SERVER_NAME (options)

This argument has the following options:

``-p PROJECT_NAME``, ``--project-id PROJECT_NAME``
   |project_id|

For example, to delete a server named "devops01" from a project named "engineering", enter:

.. code-block:: bash

   $ knife google server delete devops1 engineering

