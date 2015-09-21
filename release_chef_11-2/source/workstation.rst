.. THIS PAGE DOCUMENTS chef-client version 11.2

=====================================================
Workstations
=====================================================

.. include:: ../../includes_workstation/includes_workstation.rst

Some important components of workstations include:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Feature
     - Description
   * - :doc:`Knife </knife>`
     - .. include:: ../../includes_knife/includes_knife.rst
   * - :doc:`The chef-repo </chef_repo>`
     - .. include:: ../../includes_chef_repo/includes_chef_repo.rst

       .. include:: ../../includes_chef_repo/includes_chef_repo_structure.rst
   * - :doc:`knife.rb </config_rb_knife>`
     - The |knife rb| file is used to specify the repository-specific configuration details for |knife|.
   * - :doc:`metadata.rb </config_rb_metadata>`
     - Metadata is stored in a file called |metadata rb| that lives at the top of each cookbook’s directory.