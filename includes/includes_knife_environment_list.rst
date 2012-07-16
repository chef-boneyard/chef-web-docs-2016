.. This is an included file that describes a sub-command or argument in Knife.


The ``list`` argument is used to list all of the environments that are currently available on the |chef server|. 

This argument has the following syntax::

   knife environment list -w

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-w``, ``--with-uri``
     - |with-uri|

For example:

.. code-block:: bash

   $ knife environment list -w


   
