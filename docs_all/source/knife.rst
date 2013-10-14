=====================================================
Knife Reference
=====================================================

.. include:: ../../includes_knife/includes_knife.rst


Working with Knife
=====================================================

.. include:: ../../includes_knife/includes_knife_using.rst

JSON Data Format
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_using_json.rst

Set the Text Editor
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_common_set_editor.rst

Using Quotes
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_using_quotes.rst

Sub-commands
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_using_subcommands.rst

Verb Sub-commands
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_verbs.rst

Wildcard Search
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_verbs_wildcard.rst

Plug-ins
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_using_plugins.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_using_syntax.rst

Many Users, Same Repo
-----------------------------------------------------
.. include:: ../../includes_repository/includes_repository_many_users_same_repo.rst


Common Options
=====================================================
.. include:: ../../includes_knife/includes_knife_common_options.rst


bootstrap
=====================================================

.. include:: ../../includes_chef/includes_chef_bootstrap.rst

.. include:: ../../includes_knife/includes_knife_bootstrap.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_bootstrap_syntax.rst

Options
-----------------------------------------------------
Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

.. include:: ../../includes_knife/includes_knife_bootstrap_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_bootstrap_settings.rst

Examples
-----------------------------------------------------
.. include:: ../../step_knife/step_knife_bootstrap_use_ssh_password.rst

.. include:: ../../step_knife/step_knife_bootstrap_use_file_with_private_key.rst

The following examples show how to customize the default bootstraps. 

Ubuntu 12.04
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_bootstrap_example_ubuntu.rst

Debian and Apt
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_bootstrap_example_debian.rst



client
=====================================================

.. include:: ../../includes_security/includes_security_chef_validator.rst

.. include:: ../../includes_knife/includes_knife_client.rst

Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.
   
bulk delete
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_client_bulk_delete.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_client_bulk_delete_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|no_options|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.

create
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_client_create.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_client_create_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_client_create_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_client_create_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_client_create_admin.rst

.. include:: ../../step_knife/step_knife_client_create_hosted_and_private.rst

delete
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_client_delete.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_client_delete_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|no_options|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_client_delete.rst

edit
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_client_edit.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_client_edit_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|no_options|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_client_edit.rst

list
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_client_list.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_client_list_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_client_list_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_client_list_all.rst

.. include:: ../../step_knife/step_knife_client_list_authenticate.rst

reregister
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_client_reregister.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_client_reregister_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_client_reregister_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_client_reregister_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_client_reregister.rst

show
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_client_show.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_client_show_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_client_show_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_client_show.rst

.. include:: ../../step_knife/step_knife_common_view_json.rst




configure
=====================================================

.. include:: ../../includes_knife/includes_knife_configure.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_configure_syntax.rst

Options
-----------------------------------------------------
Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

.. include:: ../../includes_knife/includes_knife_configure_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_configure_settings.rst

Examples
-----------------------------------------------------
.. include:: ../../step_knife/step_knife_configure_knife_rb.rst

.. include:: ../../step_knife/step_knife_configure_client_rb.rst


cookbook
=====================================================

.. include:: ../../includes_cookbooks/includes_cookbooks.rst

.. include:: ../../includes_knife/includes_knife_cookbook.rst

Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

bulk delete
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_bulk_delete.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_cookbook_bulk_delete_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_cookbook_bulk_delete_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_cookbook_bulk_delete_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_cookbook_bulk_delete.rst


create
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_create.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_cookbook_create_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_cookbook_create_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_cookbook_create_settings.rst

Examples 
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_cookbook_create_with_options.rst


delete
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_delete.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_cookbook_delete_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_cookbook_delete_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_cookbook_delete_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_cookbook_delete.rst


download
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_download.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_cookbook_download_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_cookbook_download_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_cookbook_download_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_cookbook_download.rst


list
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_list.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_cookbook_list_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_cookbook_list_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_cookbook_list_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_cookbook_list.rst


metadata
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_metadata.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_metadata_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_cookbook_metadata_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_cookbook_metadata_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_cookbook_metadata.rst


metadata from file
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_metadata_from_file.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_metadata_from_file_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|no_options|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_cookbook_metadata_from_file.rst


show
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_show.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_cookbook_show_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_cookbook_show_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_cookbook_show_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_cookbook_show_cookbook_data.rst

.. include:: ../../step_knife/step_knife_cookbook_show_cookbook_versions.rst

.. include:: ../../step_knife/step_knife_cookbook_show_cookbook_version.rst

.. include:: ../../step_knife/step_knife_common_view_json.rst


test
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_test.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_cookbook_test_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_cookbook_test_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_cookbook_test_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_cookbook_test.rst


upload
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_upload.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_cookbook_upload_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_cookbook_upload_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_cookbook_upload_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_cookbook_upload.rst

.. include:: ../../step_knife/step_knife_cookbook_upload_freeze.rst

.. include:: ../../step_knife/step_knife_cookbook_upload_force.rst



cookbook site
=====================================================

.. include:: ../../includes_api_cookbooks_site/includes_api_cookbooks_site.rst

.. include:: ../../includes_knife/includes_knife_site_cookbook.rst

Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

download
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_site_cookbook_download.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_site_cookbook_download_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_site_cookbook_download_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_site_cookbook_download_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_site_cookbook_download.rst

install
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_site_cookbook_install.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_site_cookbook_install_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_site_cookbook_install_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_site_cookbook_install_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_site_cookbook_install.rst

list
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_site_cookbook_list.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_site_cookbook_list_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_site_cookbook_list_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_site_cookbook_list.rst

search
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_site_cookbook_search.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_site_cookbook_search_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|no_options|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_site_cookbook_search.rst

share
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_site_cookbook_share.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_site_cookbook_share_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_site_cookbook_share_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_site_cookbook_share.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_site_cookbook_share.rst


show
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_site_cookbook_show.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_site_cookbook_show_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_site_cookbook_show_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_site_cookbook_show.rst

.. include:: ../../step_knife/step_knife_common_view_json.rst


unshare
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_site_cookbook_unshare.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_site_cookbook_unshare_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|no_options|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_site_cookbook_unshare.rst




data bag
=====================================================

.. include:: ../../includes_data_bag/includes_data_bag.rst

.. include:: ../../includes_data_bag/includes_data_bag_encryption.rst

.. include:: ../../includes_knife/includes_knife_data_bag.rst

Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

create
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_data_bag_create.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_data_bag_create_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_data_bag_create_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_data_bag_create_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_data_bag_create.rst

delete
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_data_bag_delete.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_data_bag_delete_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_data_bag_delete_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_data_bag_delete.rst

.. include:: ../../step_knife/step_knife_data_bag_delete_item.rst

edit
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_data_bag_edit.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_data_bag_edit_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_data_bag_edit_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_data_bag_edit_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_data_bag_edit.rst

.. include:: ../../step_knife/step_knife_data_bag_edit_item.rst

from file
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_data_bag_from_file.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_data_bag_from_file_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_data_bag_from_file_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_data_bag_from_file_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_data_bag_from_file_create.rst

.. include:: ../../step_knife/step_knife_data_bag_from_file_create_encrypted.rst


list
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_data_bag_list.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_data_bag_list_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_data_bag_list_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_data_bag_list.rst

show
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_data_bag_show.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_data_bag_show_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_data_bag_show_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_data_bag_show_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_data_bag_show.rst

.. include:: ../../step_knife/step_knife_data_bag_show_item.rst

.. include:: ../../step_knife/step_knife_data_bag_show_item_encrypted.rst

.. include:: ../../step_knife/step_knife_data_bag_show_item_decrypted.rst

.. include:: ../../step_knife/step_knife_data_bag_show_as_json.rst



delete
=====================================================

.. include:: ../../includes_knife/includes_knife_delete.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_delete_syntax.rst

Options
-----------------------------------------------------
Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

.. include:: ../../includes_knife/includes_knife_11-4_delete_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_delete_settings.rst

Examples
-----------------------------------------------------
None.




deps
=====================================================

.. include:: ../../includes_knife/includes_knife_deps.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_deps_syntax.rst

Options
-----------------------------------------------------
Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

.. include:: ../../includes_knife/includes_knife_deps_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_deps_settings.rst

Examples
-----------------------------------------------------
.. include:: ../../step_knife/step_knife_deps_node.rst

.. include:: ../../step_knife/step_knife_deps_role.rst

.. include:: ../../step_knife/step_knife_deps_cookbook.rst

.. include:: ../../step_knife/step_knife_deps_environment.rst

.. include:: ../../step_knife/step_knife_deps_combo.rst

.. include:: ../../step_knife/step_knife_deps_wildcard.rst

.. include:: ../../step_knife/step_knife_deps_return_as_tree.rst

.. include:: ../../step_knife/step_knife_deps_pass_output_to_knife_upload.rst

.. include:: ../../step_knife/step_knife_deps_pass_output_to_knife_xargs.rst



diff
=====================================================

.. include:: ../../includes_knife/includes_knife_diff.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_diff_syntax.rst

Options
-----------------------------------------------------
Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

.. include:: ../../includes_knife/includes_knife_11-4_diff_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_diff_settings.rst

Examples
-----------------------------------------------------
.. include:: ../../step_knife/step_knife_diff_compare_json_files.rst

.. include:: ../../step_knife/step_knife_diff_compare_repo_and_server.rst

.. include:: ../../step_knife/step_knife_diff_compare_then_return_results.rst



download
=====================================================

.. include:: ../../includes_knife/includes_knife_download.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_download_syntax.rst

Options
-----------------------------------------------------
Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

.. include:: ../../includes_knife/includes_knife_11-4_download_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_download_settings.rst

Examples
-----------------------------------------------------
.. include:: ../../step_knife/step_knife_download_repository.rst

.. include:: ../../step_knife/step_knife_download_directory_cookbooks.rst

.. include:: ../../step_knife/step_knife_download_directory_environments.rst

.. include:: ../../step_knife/step_knife_download_directory_environment.rst

.. include:: ../../step_knife/step_knife_download_directory_roles.rst

.. include:: ../../step_knife/step_knife_download_directory_cookbooks_and_role.rst



edit
=====================================================

.. include:: ../../includes_knife/includes_knife_edit.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_edit_syntax.rst

Options
-----------------------------------------------------
Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

.. include:: ../../includes_knife/includes_knife_edit_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_edit_settings.rst

Examples
-----------------------------------------------------
None.






environment
=====================================================

.. include:: ../../includes_environment/includes_environment.rst

.. include:: ../../includes_knife/includes_knife_environment.rst

Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

create
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_environment_create.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_environment_create_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_environment_create_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_environment_create_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_environment_create.rst


delete
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_environment_delete.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_environment_delete_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|no_options|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_environment_delete.rst


edit
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_environment_edit.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_environment_edit_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|no_options|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_environment_edit.rst


from file
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_environment_from_file.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_environment_from_file_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_environment_from_file_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_environment_from_file_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_environment_from_file.rst


list
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_environment_list.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_environment_list_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_environment_list_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_environment_list.rst


show
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_environment_show.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_environment_show_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_environment_show_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_environment_show.rst

.. include:: ../../step_knife/step_knife_common_view_json.rst




exec
=====================================================

.. include:: ../../includes_knife/includes_knife_exec.rst

Authenticated API Requests
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_exec_authenticated_api_requests.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_exec_syntax.rst

Options
-----------------------------------------------------
Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

.. include:: ../../includes_knife/includes_knife_exec_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_exec_settings.rst

Examples
-----------------------------------------------------
.. include:: ../../step_knife/step_knife_exec_run_ruby_scripts.rst

.. include:: ../../step_knife/step_knife_exec_check_knife_status.rst

.. include:: ../../step_knife/step_knife_exec_list_available_free_memory.rst

.. include:: ../../step_knife/step_knife_exec_list_available_search_indexes.rst

.. include:: ../../step_knife/step_knife_exec_query_for_multiple_attributes.rst




index rebuild
=====================================================
.. include:: ../../includes_knife/includes_knife_index_rebuild.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_index_rebuild_syntax.rst

Options
-----------------------------------------------------
Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

|no_options|

Examples
-----------------------------------------------------
None.




list
=====================================================

.. include:: ../../includes_knife/includes_knife_list.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_list_syntax.rst

Options
-----------------------------------------------------
Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

.. include:: ../../includes_knife/includes_knife_11-4_list_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_list_settings.rst

Examples
-----------------------------------------------------
.. include:: ../../step_knife/step_knife_list_roles.rst

.. include:: ../../step_knife/step_knife_list_roles_and_environments.rst

.. include:: ../../step_knife/step_knife_list_everything.rst



node
=====================================================

.. include:: ../../includes_node/includes_node.rst

.. include:: ../../includes_knife/includes_knife_node.rst

Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

bulk delete
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_node_bulk_delete.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_node_bulk_delete_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|no_options|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_node_bulk_delete.rst

create
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_node_create.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_node_create_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|no_options|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_node_create.rst

delete
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_node_delete.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_node_delete_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|no_options|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_node_delete.rst

edit
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_node_edit.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_node_edit_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_node_edit_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_node_edit.rst

from file
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_node_from_file.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_node_from_file_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|no_options|

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_node_from_file_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_node_from_file.rst

list
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_node_list.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_node_list_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_node_list_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_node_list_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_node_list_all.rst

run_list add
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_node_run_list_add.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_node_run_list_add_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_node_run_list_add_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_node_run_list_add_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_node_run_list_add_role.rst

.. include:: ../../step_knife/step_knife_node_run_list_add_roles_and_recipes.rst

.. include:: ../../step_knife/step_knife_node_run_list_add_recipe_with_fqdn.rst

.. include:: ../../step_knife/step_knife_node_run_list_add_recipe_with_cookbook.rst

.. include:: ../../step_knife/step_knife_node_run_list_add_default_recipe.rst

run_list remove
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_node_run_list_remove.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_node_run_list_remove_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|no_options|

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_node_run_list_remove_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_node_run_list_remove_role.rst

.. include:: ../../step_knife/step_knife_node_run_list_remove_run_list.rst

show
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_node_show.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_node_show_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_node_show_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_node_show_all_data.rst

.. include:: ../../step_knife/step_knife_node_show_all_data_basic.rst

.. include:: ../../step_knife/step_knife_node_show_all_data_truncated.rst

.. include:: ../../step_knife/step_knife_node_show_attribute.rst

.. include:: ../../step_knife/step_knife_node_show_fqdn.rst

.. include:: ../../step_knife/step_knife_node_show_run_list.rst

.. include:: ../../step_knife/step_knife_common_view_json.rst

.. include:: ../../step_knife/step_knife_common_view_json_raw.rst



raw
=====================================================

.. include:: ../../includes_knife/includes_knife_raw.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_raw_syntax.rst

Options
-----------------------------------------------------
Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

.. include:: ../../includes_knife/includes_knife_raw_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_raw_settings.rst

Examples
-----------------------------------------------------
.. include:: ../../step_knife/step_knife_raw_view_client.rst

.. include:: ../../step_knife/step_knife_raw_view_node.rst



recipe list
=====================================================

.. include:: ../../includes_knife/includes_knife_recipe_list.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_recipe_list_syntax.rst

Options
-----------------------------------------------------
Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

|no_options|

Examples
-----------------------------------------------------
.. include:: ../../step_knife/step_knife_recipe_list.rst



role
=====================================================

.. include:: ../../includes_role/includes_role.rst

.. include:: ../../includes_knife/includes_knife_role.rst

Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

bulk delete
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_role_bulk_delete.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_role_bulk_delete_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|no_options|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_role_bulk_delete.rst

create
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_role_create.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_role_create_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_role_create_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_role_create_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_role_create.rst

delete
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_role_delete.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_role_delete_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|no_options|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_role_delete.rst

edit
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_role_edit.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_role_edit_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|no_options|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_role_edit.rst

from file
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_role_from_file.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_role_from_file_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|no_options|

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_role_from_file_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_role_from_file.rst

list
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_role_list.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_role_list_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_role_list_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_role_list.rst

show
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_role_show.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_role_show_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_role_show_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_role_show_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_common_view_json.rst

.. include:: ../../step_knife/step_knife_common_view_json.rst








search
=====================================================
.. include:: ../../includes_search/includes_search.rst

.. include:: ../../includes_knife/includes_knife_search.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_search_syntax.rst

Options
-----------------------------------------------------
Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

.. include:: ../../includes_knife/includes_knife_search_options.rst

Examples
-----------------------------------------------------
**Search by platform ID**

.. include:: ../../step_knife/step_knife_search_by_platform_ids.rst

**Search by instance type**

.. include:: ../../step_knife/step_knife_search_by_platform_instance_type.rst

**Search by node**

.. include:: ../../step_knife/step_knife_search_by_node.rst

**Search by node and environment**

.. include:: ../../step_knife/step_knife_search_by_node_and_environment.rst

**Search for nested attributes**

.. include:: ../../step_knife/step_knife_search_by_nested_attribute.rst

**Search for multiple attributes**

.. include:: ../../step_knife/step_knife_search_by_query_for_many_attributes.rst

**Search for nested attributes using a search query**

.. include:: ../../step_knife/step_knife_search_by_query_for_nested_attribute.rst

**Use a test query**

.. include:: ../../step_knife/step_knife_search_test_query_for_ssh.rst




show
=====================================================

.. include:: ../../includes_knife/includes_knife_show.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_show_syntax.rst

Options
-----------------------------------------------------
Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

.. include:: ../../includes_knife/includes_knife_show_options.rst

Examples
-----------------------------------------------------
.. include:: ../../step_knife/step_knife_show_all_cookbooks.rst

.. include:: ../../step_knife/step_knife_show_roles_and_environments.rst




ssh
=====================================================

.. include:: ../../includes_knife/includes_knife_ssh.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_ssh_syntax.rst

Options
-----------------------------------------------------
Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

.. include:: ../../includes_knife/includes_knife_ssh_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_ssh_settings.rst

Examples
-----------------------------------------------------
.. include:: ../../step_knife/step_knife_ssh_find_uptime.rst

.. include:: ../../step_knife/step_knife_ssh_run_chef_client_on_all_nodes.rst

.. include:: ../../step_knife/step_knife_ssh_force_chef_run.rst

.. include:: ../../step_knife/step_knife_ssh_query_for_nodes.rst

.. include:: ../../step_knife/step_knife_ssh_upgrade_nodes.rst

.. include:: ../../step_knife/step_knife_ssh_shell_type.rst


status
=====================================================

.. include:: ../../includes_knife/includes_knife_status.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_status_syntax.rst

Options
-----------------------------------------------------
Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

.. include:: ../../includes_knife/includes_knife_status_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_status_settings.rst

Examples
-----------------------------------------------------
.. include:: ../../step_knife/step_knife_status_include_run_lists.rst

.. include:: ../../step_knife/step_knife_status_past_hour.rst

.. include:: ../../step_knife/step_knife_status_returned_by_query.rst

.. include:: ../../step_knife/step_knife_status_view_for_all_nodes.rst




tag
=====================================================

.. include:: ../../includes_chef/includes_chef_tags.rst

.. include:: ../../includes_knife/includes_knife_tag.rst

Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

create
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_tag_create.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_tag_create_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|no_options|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_tag_create.rst

delete
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_tag_delete.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_tag_delete_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|no_options|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_tag_delete.rst

list
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_tag_list.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_tag_list_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|no_options|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_tag_list.rst



upload
=====================================================

.. include:: ../../includes_knife/includes_knife_upload.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_upload_syntax.rst

Options
-----------------------------------------------------
Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

.. include:: ../../includes_knife/includes_knife_11-4_upload_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_upload_settings.rst

Examples
-----------------------------------------------------
.. include:: ../../step_knife/step_knife_upload_repository.rst

.. include:: ../../step_knife/step_knife_upload_directory_cookbooks.rst

.. include:: ../../step_knife/step_knife_upload_directory_environments.rst

.. include:: ../../step_knife/step_knife_upload_directory_environment.rst

.. include:: ../../step_knife/step_knife_upload_directory_roles.rst

.. include:: ../../step_knife/step_knife_upload_directory_cookbooks_and_role.rst




user
=====================================================

.. include:: ../../includes_knife/includes_knife_user.rst

.. note:: |note subcommand_is_open_source_only|

Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

create
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_user_create.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_user_create_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_user_create_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_user_create_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_user_create.rst

delete
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_user_delete.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_user_delete_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|no_options|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_user_delete.rst

edit
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_user_edit.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_user_edit_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|no_options|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.

list
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_user_list.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_user_list_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_user_list_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.

reregister
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_user_reregister.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_user_reregister_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_user_reregister_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_user_reregister_settings.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_user_reregister.rst

show
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_user_show.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_user_show_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_user_show_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_knife/step_knife_user_show.rst

.. include:: ../../step_knife/step_knife_user_show_json.rst



xargs
=====================================================

.. include:: ../../includes_knife/includes_knife_xargs.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_xargs_syntax.rst

Options
-----------------------------------------------------
Review the list of `common options <http://http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

.. include:: ../../includes_knife/includes_knife_xargs_options.rst

**knife.rb Settings**

.. note:: See `knife.rb <http://docs.opscode.com/config_rb_knife.html>`_ for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_xargs_settings.rst

Examples
-----------------------------------------------------
.. include:: ../../step_knife/step_knife_xargs_pass_command_to.rst
