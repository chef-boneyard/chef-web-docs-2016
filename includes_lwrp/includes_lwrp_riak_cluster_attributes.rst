.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``cluster_name``
     - |name cluster|
   * - ``cluster_members``
     - |cluster member_nodes| Default value: discovered by |chef server| search functionality.
   * - ``node_name``
     - |name local_riak_node|
   * - ``timeout``
     - |timeout ring_convergence| Default value: ``30``.
   * - ``riak_admin_path``
     - |path riak_admin| Default value: ``/usr/sbin``.
