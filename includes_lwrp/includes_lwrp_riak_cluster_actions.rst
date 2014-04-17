.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:join``
     - Use to join a local node to a cluster.
   * - ``:wait_for_ringready``
     - Use to wait for cluster membership to converge ("all nodes in the cluster agree on the ring state") before joining a local node to a cluster.
