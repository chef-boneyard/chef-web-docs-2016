.. This is an included file that describes a sub-command or argument in Knife.


The ``server list`` argument is used to find instances that are associated with an |openstack| account. The results may show instances that are not currently managed by the |chef server|.

This argument has the following syntax::

   knife openstack server list

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-A ID``, ``--openstack-access-key-id ID``
     - |openstack-access-key-id|
   * - ``-K SECRET``, ``--openstack-secret-access-key SECRET``
     - |openstack-secret-access-key|
   * - ``--openstack-api-endpoint ENDPOINT``
     - |openstack-api-endpoint|
   * - ``--region REGION``
     - |region openstack|

