.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``clients`` group is assigned the following permissions by default to objects on the |chef server|:

.. list-table::
   :widths: 160 100 100 100 100
   :header-rows: 1

   * - Object
     - Create
     - Delete
     - Read
     - Update
   * - clients
     - no
     - no
     - no
     - no
   * - cookbooks
     - no
     - no
     - yes
     - no
   * - cookbook_artifacts
     - no
     - no
     - yes
     - no
   * - data
     - no
     - no
     - yes
     - no
   * - environments
     - no
     - no
     - yes
     - no
   * - nodes
     - yes
     - no
     - yes
     - no
   * - organization
     - no
     - no
     - yes
     - no
   * - policies
     - no
     - no
     - yes
     - no
   * - policy_groups
     - no
     - no
     - yes
     - no
   * - roles
     - no
     - no
     - yes
     - no
   * - sandboxes
     - no
     - no
     - no
     - no
