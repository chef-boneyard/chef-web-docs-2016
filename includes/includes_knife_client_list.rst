.. This is an included file that describes a sub-command or argument in Knife.


The ``list`` argument is used to view a list of registered clients. 

This argument has the following syntax::

   knife client list (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-w``, ``--with-uri``
     - |with-uri|

For example, enter::

   knife client list

to return something similar to:

   exampleorg-validator
   i-12345678
   rs-123456

To get the list of clients for a specific organization, use the ``-u`` and ``-k`` options:

.. code-block:: bash

   $ knife client list -u ORGNAME-validator -k .chef/ORGNAME-validator.pem

