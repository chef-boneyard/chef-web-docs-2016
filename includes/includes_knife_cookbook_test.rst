.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``test`` argument is used to test a cookbook for syntax errors. This argument uses |ruby| syntax checking to verify every file in a cookbook that ends in .rb and |erb|.

This argument has the following syntax::

   knife cookbook test COOKBOOK_NAME (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-a``, ``--all``
     - |all cookbooks test|
   * - ``-o PATH:PATH``, ``--cookbook-path PATH:PATH``
     - |cookbook-path|

For example, to test a cookbook named "getting-started", enter:

.. code-block:: bash

   $ knife cookbook test getting-started

