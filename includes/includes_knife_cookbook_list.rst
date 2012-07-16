.. This is an included file that describes a sub-command or argument in Knife.


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
