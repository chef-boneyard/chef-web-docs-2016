.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server list`` argument is used to find instances that are associated with a |google compute engine| account. The results may show instances that are not currently managed by the |chef server|.

This argument has the following syntax::

   knife google server list (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-p PROJECT_NAME``, ``--project-id PROJECT_NAME``
     - |project_id|

For example, to view a list of instances associated with a project named "dev-01", enter:

.. code-block:: bash

   $ knife google server list -p dev-01



