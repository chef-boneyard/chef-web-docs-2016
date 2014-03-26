==========================================================================
|kitchen yml|
==========================================================================

.. include:: ../../includes_test_kitchen/includes_test_kitchen_yml.rst

.. warning:: This topic details functionality that will be packaged with Chef in an upcoming release. See http://kitchen.ci/docs/getting-started/ for the official description of test-kitchen, how to get it set up, and how to use it for integrated cookbook testing.

Syntax
==========================================================================

.. include:: ../../includes_test_kitchen/includes_test_kitchen_yml_syntax.rst

|client rb|-specific Settings
==========================================================================
.. include:: ../../includes_test_kitchen/includes_test_kitchen_yml_client_rb.rst

|chef client|-specific Settings
==========================================================================

.. include:: ../../includes_test_kitchen/includes_test_kitchen_yml_chef_client.rst

Driver-specific Settings
==========================================================================
.. include:: ../../includes_test_kitchen/includes_test_kitchen_yml_driver.rst

Examples
==========================================================================
The following examples show actual |kitchen yml| files used in |company_name|-maintained cookbooks.

``chef-client`` Cookbook
--------------------------------------------------------------------------
.. include:: ../../includes_test_kitchen/includes_test_kitchen_yml_example_chef_client.rst

``chef-splunk`` Cookbook
--------------------------------------------------------------------------
.. include:: ../../includes_test_kitchen/includes_test_kitchen_yml_example_chef_splunk.rst
