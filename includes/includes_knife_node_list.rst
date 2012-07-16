.. This is an included file that describes a sub-command or argument in Knife.


The ``list`` argument is used to view all of the nodes that exist on a |chef server|. 

This argument has the following syntax::

   knife node list (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-w``, ``--with-uri``
     - |with-uri|

For example, enter:

.. code-block:: bash

   $ knife node list

to return:

.. code-block:: bash

   i-12345678
   rs-123456

