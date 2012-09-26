.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``list`` argument is used to view a list of data bags that are currently available on the |chef server|. 

This argument has the following syntax::

   knife data bag list

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-w``, ``--with-uri``
     - |with-uri|

For example, to view a list of data bags on the |chef server|, enter:

.. code-block:: bash

   $ knife data bag list


