.. This is an included file that describes a sub-command or argument in Knife.


The ``search`` sub-command is used run a search query for information that is indexed on a |chef server|.

This sub-command has the following syntax::

   knife search INDEX SEARCH_QUERY (options)

This sub-command has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-a ATTR``, ``--attribute ATTR``
     - |attribute|
   * - ``-b ROW``, ``-start ROW``
     - |start|
   * - ``-i``, ``--id-only``
     - |id-only|
   * - ``INDEX``
     - |INDEX|
   * - ``-l``, ``--long``
     - |long|
   * - ``-m``, ``--medium``
     - |medium|
   * - ``-o SORT``, ``--sort SORT``
     - |sort|
   * - ``-q QUERY``, ``--query QUERY``
     - |query|
   * - ``-r``, ``--run-list``
     - |run-list indicator|
   * - ``-R INT``, ``--rows INT``
     - |rows|
   * - ``SEARCH_QUERY``
     - |SEARCH_QUERY|

For example, to search for the IDs of all nodes running on the |amazon ec2| platform, enter:

.. code-block:: bash

   $ knife search node 'ec2:*' -i

to return something like:

.. code-block:: bash

   4 items found
   
   ip-0A7CA19F.ec2.internal
   
   ip-0A58CF8E.ec2.internal
   
   ip-0A58E134.ec2.internal
   
   ip-0A7CFFD5.ec2.internal

To search for the instance type (flavor) of all nodes running on the |amazon ec2| platform, enter:

.. code-block:: bash

   $ knife search node 'ec2:*' -a ec2.instance_type

to return something like:

.. code-block:: bash

   4 items found
   
   ec2.instance_type:  m1.large
   id:                 ip-0A7CA19F.ec2.internal
   
   ec2.instance_type:  m1.large
   id:                 ip-0A58CF8E.ec2.internal
   
   ec2.instance_type:  m1.large
   id:                 ip-0A58E134.ec2.internal
   
   ec2.instance_type:  m1.large
   id:                 ip-0A7CFFD5.ec2.internal

To search for all nodes running |ubuntu|, enter:

.. code-block:: bash

   $ knife search node 'platform:ubuntu'

To search for all nodes running |centos| in the production environment, enter:

.. code-block:: bash

   $ knife search node 'chef_environment:production AND platform:centos'

