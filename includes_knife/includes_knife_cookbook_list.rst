.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``list`` argument is used to view a list of cookbooks that are currently available on the |chef server|. The list will contain only the most recent version for each cookbook by default.

This argument has the following syntax::

   knife cookbook list (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-a``, ``--all``
     - |all cookbooks return|
   * - ``-w``, ``--with-uri``
     - |with-uri|

For example:

.. code-block:: bash

   $ knife cookbook list
