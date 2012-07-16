.. This is an included file that describes a sub-command or argument in Knife.


The ``server list`` argument is used to find instances that are associated with a |rackspace| account. The results may show instances that are not currently managed by the |chef server|.

This argument has the following syntax::

   knife rackspace server list

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-K API_KEY``, ``--rackspace-api-key API_KEY``
     - |rackspace-api-key|
   * - ``-A USER_NAME``, ``--rackspace-username USER_NAME``
     - |rackspace-username|
   * - ``--rackspace-api-auth-url``
     - |rackspace-api-auth-url|

For example, to find all Rackspace instances, enter:

.. code-block:: bash

   $ knife cloud rackspace list

to return:

.. code-block:: bash

   Instance ID    Public IP    Private IP    Flavor    Image     State     Name        
   12345678       1.1.1.1      192.168.1.1   3         49        active    slice12345678

