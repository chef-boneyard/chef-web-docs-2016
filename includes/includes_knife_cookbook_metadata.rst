.. This is an included file that describes a sub-command or argument in Knife.


The ``metadata`` argument is used to generate the metadata for one or more cookbooks. 

This argument has the following syntax::

   knife cookbook metadata (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-a``, ``--all``
     - |all cookbooks generate|
   * - ``-o PATH:PATH``, ``--cookbook-path PATH:PATH``
     - |cookbook-path|

For example, to generate metadata for all cookbooks:

.. code-block:: bash

   $ knife cookbook metadata -a

