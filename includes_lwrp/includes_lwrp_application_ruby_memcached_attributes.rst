.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``role``
     - The name of a role. During a |chef| run, a search will be performed to find a node with the same name as this value in the same environment as the current role. If a node is found, it's IP address will be used when rendering the ``memcached.yml`` file.
