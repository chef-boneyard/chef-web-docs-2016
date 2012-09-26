.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``list`` argument is used to view a list of roles that are currently available on the |chef server|. 

This argument has the following syntax::

   knife role list

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-w``, ``--with-uri``
     - |with-uri|

For example, to view a list of roles on the |chef server| and display the URI for each role returned, enter:

.. code-block:: bash

   $ knife role list -w

