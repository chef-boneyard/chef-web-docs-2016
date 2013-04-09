=====================================================
Directory Structure
=====================================================

.. include:: ../../includes_repository/includes_repository_directory.rst

The sub-directories in the |chef| repository are:

* ``certificates/``
* ``.chef/``
* ``config/``
* ``cookbooks/``
* ``data_bags/``
* ``environments/``
* ``roles/``

certificates/
=====================================================
.. include:: ../../includes_repository/includes_repository_directory_certificates.rst

.. include:: ../../steps/step_repository_certificate_generate.rst

.chef/
=====================================================
.. include:: ../../includes_repository/includes_repository_directory_chef.rst

config/
=====================================================
.. include:: ../../includes_repository/includes_repository_directory_config.rst

The |chef| repository uses two configuration files: ``rake.rb`` (required) and ``knife.rb`` (optional).

rake.rb
-----------------------------------------------------
.. include:: ../../includes_config/includes_config_rb_rake.rst

.. include:: ../../includes_chef/includes_rake_tasks_included_in_chef_libraries.rst

knife.rb
-----------------------------------------------------
.. include:: ../../includes_config/includes_config_rb_knife.rst

cookbooks/
=====================================================
.. include:: ../../includes_repository/includes_repository_directory_cookbooks.rst

data_bags/
=====================================================
.. include:: ../../includes_repository/includes_repository_directory_data_bags.rst

environments/
=====================================================
.. include:: ../../includes_repository/includes_repository_directory_environments.rst

roles/
=====================================================
.. include:: ../../includes_repository/includes_repository_directory_roles.rst 


.. toctree::
   :hidden:

   essentials_repository_structure_certificates
   essentials_repository_structure_chef
   essentials_repository_structure_config
   essentials_repository_structure_cookbooks
   essentials_repository_structure_data_bags
   essentials_repository_structure_environments
   essentials_repository_structure_roles




