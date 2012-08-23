.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``delete`` argument is used to delete a specified cookbook or cookbook version.

This argument has the following syntax::

   knife cookbook delete COOKBOOK_NAME [COOKBOOK_VERSION] (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-a``, ``--all``
     - |all cookbooks delete|
   * - ``-p``, ``--purge``
     - |purge cookbook|
   * - ``COOKBOOK_VERSION``
     - |COOKBOOK_VERSION delete|

For example, to delete version "0.8" from a cookbook named "smartmon", enter:

.. code-block:: bash

   $ knife cookbook delete smartmon version 0.8

Type ``Y`` to confirm a deletion.
