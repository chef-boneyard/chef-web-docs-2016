=====================================================
About Files
=====================================================

.. include:: ../../includes_cookbooks/includes_cookbooks_file_distribution.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Topic
     - Description
   * - :doc:`essentials_cookbook_files_syntax`
     - The |resource cookbook file| resource defines a file distribution.
   * - :doc:`essentials_cookbook_files_specificity`
     - A cookbook can be designed to support distributing files across platforms in a way that ensure the right file ends up on the right system.
   * - :doc:`essentials_cookbook_files_host_notation`
     - The naming of folders within cookbook directories must literally match the host notation used for file specificity matching.
   * - :doc:`essentials_cookbook_files_transfers`
     - When a |resource cookbook file| resource is run, the |chef client| will calculate the checksum of each local file and then compare this against the checksum for that same file as it currently exists in the cookbook on the |chef server|.


.. toctree::
   :hidden:

   essentials_cookbook_files_host_notation
   essentials_cookbook_files_specificity
   essentials_cookbook_files_syntax
   essentials_cookbook_files_transfers