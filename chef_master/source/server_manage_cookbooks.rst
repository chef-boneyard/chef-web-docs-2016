=====================================================
Manage Cookbooks
=====================================================

.. note:: This topic is about using the |chef manager| to manage cookbooks in |chef server oec|.

.. include:: ../../includes_cookbooks/includes_cookbooks.rst


Manage
=====================================================
Cookbooks can be viewed from the |chef manager| web user interface. Cookbooks are managed using |knife|.

View Cookbook Details
-----------------------------------------------------
.. include:: ../../step_manage_webui/step_manage_webui_policy_cookbook_view_details.rst


Cookbook Files
=====================================================
A cookbook can contain the following types of files:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - File Type
     - Description
   * - Attributes
     - .. include:: ../../includes_cookbooks/includes_cookbooks_attribute.rst
   * - Definitions
     - .. include:: ../../includes_cookbooks/includes_cookbooks_definition.rst
   * - Files
     - .. include:: ../../includes_cookbooks/includes_cookbooks_file_distribution.rst
   * - Libraries
     - .. include:: ../../includes_cookbooks/includes_cookbooks_library.rst
   * - Recipes
     - .. include:: ../../includes_cookbooks/includes_cookbooks_recipe.rst
   * - Resources
     - .. include:: ../../includes_cookbooks/includes_cookbooks_resource.rst
   * - Templates
     - .. include:: ../../includes_cookbooks/includes_cookbooks_template.rst

All of the file types that are part of any cookbook uploaded to the |chef server| are visible from the |chef manager|.

Download File
-----------------------------------------------------
.. include:: ../../step_manage_webui/step_manage_webui_policy_cookbook_file_download.rst

View a File
-----------------------------------------------------
.. include:: ../../step_manage_webui/step_manage_webui_policy_cookbook_file_view.rst


Permissions
=====================================================
.. include:: ../../includes_server_rbac/includes_server_rbac_permissions.rst

.. include:: ../../includes_server_rbac/includes_server_rbac_permissions_object.rst

Set
-----------------------------------------------------
.. include:: ../../step_manage_webui/step_manage_webui_policy_cookbook_permissions_set.rst

Update
-----------------------------------------------------
.. include:: ../../step_manage_webui/step_manage_webui_policy_cookbook_permissions_add.rst

View
-----------------------------------------------------
.. include:: ../../step_manage_webui/step_manage_webui_policy_cookbook_permissions_view.rst






