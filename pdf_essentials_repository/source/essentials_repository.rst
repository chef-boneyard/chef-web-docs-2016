=====================================================
Repository
=====================================================

.. include:: ../../includes_repository/includes_repository.rst

Directory Structure
=====================================================
.. include:: ../../includes_repository/includes_repository_directory.rst

.. include:: ../../includes_repository/includes_repository_directory_structure.rst

certificates/
-----------------------------------------------------
.. include:: ../../includes_repository/includes_repository_directory_certificates.rst

.. include:: ../../steps/step_repository_certificate_generate.rst

.chef/
-----------------------------------------------------
.. include:: ../../includes_repository/includes_repository_directory_chef.rst

config/
-----------------------------------------------------
.. include:: ../../includes_repository/includes_repository_directory_config.rst

The |chef| repository uses two configuration files: ``rake.rb`` (required) and ``knife.rb`` (optional):

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - File
     - Description
   * - knife.rb
     - .. include:: ../../includes_config/includes_config_rb_knife.rst
   * - rake.rb
     - .. include:: ../../includes_config/includes_config_rb_rake.rst

       .. include:: ../../includes_chef/includes_rake_tasks_included_in_chef_libraries.rst

cookbooks/
-----------------------------------------------------
.. include:: ../../includes_repository/includes_repository_directory_cookbooks.rst

.. include:: ../../steps/step_repository_cookbooks_configure_settings.rst

.. include:: ../../steps/step_repository_cookbooks_create.rst

.. include:: ../../steps/step_repository_cookbooks_download_git.rst

.. include:: ../../steps/step_repository_cookbooks_download_no_git.rst

data_bags/
-----------------------------------------------------
.. include:: ../../includes_repository/includes_repository_directory_data_bags.rst

.. include:: ../../steps/step_repository_data_bags_add_subdirectory.rst

.. include:: ../../steps/step_repository_data_bags_upload_data_bag_item.rst

environments/
-----------------------------------------------------
.. include:: ../../includes_repository/includes_repository_directory_environments.rst

.. include:: ../../steps/step_repository_roles_upload_environment.rst

roles/
-----------------------------------------------------
.. include:: ../../includes_repository/includes_repository_directory_roles.rst 

.. include:: ../../steps/step_repository_roles_upload_role.rst

Create the |chef| Repository
=====================================================
.. include:: ../../includes_repository/includes_repository_create.rst

Clone
-----------------------------------------------------
.. include:: ../../steps/step_repository_create_clone.rst

Download
-----------------------------------------------------
.. include:: ../../steps/step_repository_create_download.rst



