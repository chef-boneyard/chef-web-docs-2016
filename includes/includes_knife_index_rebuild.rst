.. This is an included file that describes a sub-command or argument in Knife.


The ``index rebuild`` sub-command is used to rebuild the search indexes for |chef open server|. This operation is destructive and may take some time.

.. note:: This sub-command ONLY works when run against the |chef open server| and will not run against any other flavor of |chef|, including |chef hosted| and |chef private|.

This sub-command has the following syntax::

   knife index rebuild

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-y``, ``--yes``
     - |yes|
