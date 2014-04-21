.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``cluster_name``
     - The name of the cluster.
   * - ``cluster_members``
     - A list of nodes that should be part of a cluster. Default value: discovered by |chef server| search functionality.
   * - ``node_name``
     - The name of the local node, as identified by the ``riak.erlang.node_name`` attribute.
   * - ``timeout``
     - The amount of time (in seconds) a command will wait for ring convergence. Default value: ``30``.
   * - ``riak_admin_path``
     - The directory in which ``riak`` and ``riak-admin`` scripts are located. Default value: ``/usr/sbin``.
