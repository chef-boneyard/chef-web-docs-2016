.. This is an included file that describes a sub-command or argument in Knife.


The ``server delete`` argument is used to delete one or more instances that are running in the |google compute engine| cloud. To find a specific cloud instance, use the ``knife google server list`` argument. Use the ``knife node delete`` and ``knife client delete`` sub-commands to delete associated node and client objects (if required).

This argument has the following syntax::

   knife google server delete SERVER_NAME (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-p PROJECT_NAME``, ``--project-id PROJECT_NAME``
     - |project_id|

For example, to delete a server named "devops01" from a project named "engineering", enter:

.. code-block:: bash

   $ knife google server delete devops1 engineering

