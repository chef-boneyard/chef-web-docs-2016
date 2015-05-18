==========================================================================
|kitchen yml|
==========================================================================

.. include:: ../../includes_test_kitchen/includes_test_kitchen_yml.rst

.. note:: This topic details functionality that is packaged with |chef dk|. See http://kitchen.ci/docs/getting-started/ for more information about |kitchen|.

Syntax
==========================================================================
.. include:: ../../includes_test_kitchen/includes_test_kitchen_yml_syntax.rst

Provisioner-specific Settings
==========================================================================
.. include:: ../../includes_test_kitchen/includes_test_kitchen_yml_provisioner.rst

.. note:: There are two community provisioners for |kitchen|: `kitchen-dsc <https://github.com/smurawski/kitchen-dsc>`_ and `kitchen-pester <https://github.com/smurawski/kitchen-pester>`_.

|chef client|-specific Settings
==========================================================================
.. include:: ../../includes_test_kitchen/includes_test_kitchen_yml_chef_client.rst

Driver-specific Settings
==========================================================================
.. include:: ../../includes_test_kitchen/includes_test_kitchen_yml_driver.rst

Drivers
--------------------------------------------------------------------------
.. include:: ../../includes_test_kitchen/includes_test_kitchen_drivers.rst

``kitchen-vagrant``
--------------------------------------------------------------------------
.. include:: ../../includes_test_kitchen/includes_test_kitchen_driver_vagrant.rst

.. include:: ../../includes_test_kitchen/includes_test_kitchen_driver_vagrant_settings.rst

.. include:: ../../includes_test_kitchen/includes_test_kitchen_driver_vagrant_config.rst

Examples
==========================================================================
The following examples show actual |kitchen yml| files used in |company_name|-maintained cookbooks.

|cookbook mysql| Cookbook
--------------------------------------------------------------------------
.. include:: ../../includes_test_kitchen/includes_test_kitchen_yml_example_mysql.rst

|cookbook chef_client| Cookbook
--------------------------------------------------------------------------
.. include:: ../../includes_test_kitchen/includes_test_kitchen_yml_example_chef_client.rst

|cookbook chef_splunk| Cookbook
--------------------------------------------------------------------------
.. include:: ../../includes_test_kitchen/includes_test_kitchen_yml_example_chef_splunk.rst

|cookbook yum| Cookbook
--------------------------------------------------------------------------
.. include:: ../../includes_test_kitchen/includes_test_kitchen_yml_example_yum.rst

Platform Attributes
--------------------------------------------------------------------------
.. include:: ../../includes_test_kitchen/includes_test_kitchen_yml_example_frontend_backend.rst