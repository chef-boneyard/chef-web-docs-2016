=====================================================
|windows|
=====================================================

.. note:: This page collects information about |chef| that is specific to using |chef| with |windows|.

The |chef client| has specific components that are designed to support unique aspects of the |windows| platform, including |windows powershell|, |microsoft iis|, and |microsoft sqlserver|.

* The |chef client| is installed on a machine running |windows| by using a |microsoft installer package|
* Three resources dedicated to the |windows| platform are built into the |chef client|: |resource batch|, |resource powershell_script|, and |resource registry_key|
* Two |knife| plugins dedicated to the |windows| platform are available: |subcommand knife azure| is used to manage virtual instances in |windows azure|; |subcommand knife windows| is used to interact with and manage physical nodes that are running |windows|, such as desktops and servers
* Four cookbooks provide application-specific support for `PowerShell 2.0 <https://github.com/opscode-cookbooks/powershell>`_, `IIS 7.0/7.5/8.0 <https://github.com/opscode-cookbooks/iis>`_, `SQL Server <https://github.com/opscode-cookbooks/database>`_, and for configuring various settings and behaviors on a machine that is running `Windows <https://github.com/opscode-cookbooks/windows>`_ 
* Support for both :i386 and :x86_64 architectures
* Six helpers are present in the |dsl recipe| to help verify the registry as a script runs---``registry_data_exists?``, ``registry_get_subkeys``, ``registry_get_values``, ``registry_has_subkeys?``, ``registry_key_exists?``, and ``registry_value_exists?``---these helpers ensure the |resource powershell_script| resource is idempotent

The most popular core resources in the |chef client|---:doc:`cookbook_file </resource_cookbook_file>`, :doc:`directory </resource_directory>`, :doc:`env </resource_env>`, :doc:`execute </resource_execute>`, :doc:`file </resource_file>`, :doc:`group </resource_group>`, :doc:`http_request </resource_http_request>`, :doc:`link </resource_link>`, :doc:`mount </resource_mount>`, :doc:`package </resource_package>`, :doc:`remote_directory </resource_remote_directory>`, :doc:`remote_file </resource_remote_file>`, :doc:`ruby_block </resource_ruby_block>`, :doc:`service </resource_service>`, :doc:`template </resource_template>` , and :doc:`user </resource_user>`---work the same way in |windows| as they do on any |unix|- or |linux|-based platform.

The file-based resources---|resource cookbook_file|, |resource file|, |resource remote_file|, and |resource template|---have attributes that support unique requirements within the |windows| platform, including ``inherits`` (for file inheritence), ``mode`` (for octal modes), and ``rights`` (for access control lists, or ACLs).

The |chef client| can be used to manage machines that run on the following versions of |windows|:

.. list-table::
   :widths: 200 200 200
   :header-rows: 1

   * - Operating System
     - Version
     - Architecture
   * - Windows
     - 2003 R2, 2008
     - i686, x86_64
   * - 
     - 2008 R2, 2012
     - x86_64

(The recommended amount of RAM available to the |chef client| during a |chef client| run is 512MB. Each node and workstation must have access to the |chef server| via HTTPS. |ruby| version 1.9.1 or |ruby| version 1.9.2 with |ssl| bindings is required.)

The |microsoft installer package| for |windows| is available at http://www.opscode.com/chef/install/. From the drop-downs, select the operating system (``Windows``), then the version, and then the architecture.

After the |chef client| is installed, it is located at ``C:\chef``. The main configuration file for the |chef client| is located at ``C:\chef\client.rb``.

The following sections are pulled in from the larger docs.opscode.com site and represents the documentation that is specific to the |windows| platform, compiled here into a single-page reference.


Install the |chef client| on Windows
=====================================================
.. include:: ../../includes_windows/includes_windows_install_overview.rst


Use knife-windows
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows.rst

For more information about the |subcommand knife windows| plugin, see :doc:`windows </plugin_knife_windows>`.

|microsoft msiexec|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_windows/includes_windows_msiexec.rst

Use MSI Installer
-----------------------------------------------------
A |microsoft installer package| is available for installing the |chef client| on a |windows| machine.

.. include:: ../../step_install/step_install_windows.rst

Use an Existing Process
-----------------------------------------------------
.. include:: ../../includes_windows/includes_windows_system_center.rst

Knife
=====================================================
.. include:: ../../includes_knife/includes_knife.rst

Set the Text Editor
-----------------------------------------------------
.. include:: ../../step_knife/step_knife_common_set_editor.rst

knife bootstrap
-----------------------------------------------------
.. include:: ../../includes_chef/includes_chef_bootstrap.rst

.. include:: ../../includes_knife/includes_knife_bootstrap.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_knife/includes_knife_bootstrap_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

.. include:: ../../includes_knife/includes_knife_bootstrap_options.rst

knife.rb Settings
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. note:: See :doc:`knife.rb </config_rb_knife>` for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_bootstrap_settings.rst

Custom Templates
+++++++++++++++++++++++++++++++++++++++++++++++++++++
A custom bootstrap template file (``template_filename.erb``) must be located in a ``bootstrap/`` directory. Use the ``--distro`` option with the ``knife bootstrap`` subcommand to specify the bootstrap template file. For example, a bootstrap template file named "british_sea_power.erb":

.. code-block:: bash

   $ knife bootstrap 123.456.7.8 -x username -P password --sudo --distro "british_sea_power.erb"

The following examples show how a bootstrap template file can be customized for various platforms.

Microsoft Windows
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_knife/includes_knife_bootstrap_example_windows.rst


knife azure
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure.rst

.. note:: Review the list of `common options <http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_plugin_knife/step_plugin_knife_azure_install_rubygem.rst

Generate the Management Certificate
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_certificate.rst

image list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_image_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_image_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_image_list_options.rst

server create
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_create.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_create_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_create_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Provision an instance using new hosted service and storage accounts**

.. include:: ../../step_plugin_knife/step_plugin_knife_azure_server_create_use_existing_hosted_service.rst

**Provision an instance using new hosted service and storage accounts**

.. include:: ../../step_plugin_knife/step_plugin_knife_azure_server_create_use_new_hosted_service.rst

server delete
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_delete.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_delete_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_delete_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Delete an instance**

.. include:: ../../step_plugin_knife/step_plugin_knife_azure_server_delete.rst

server describe
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_describe.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_describe_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_describe_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**View role details**

.. include:: ../../step_plugin_knife/step_plugin_knife_azure_server_describe.rst

server list
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_list.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_list_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_list_options.rst


knife windows
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows.rst

.. note:: Review the list of `common options <http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

Install this plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_plugin_knife/step_plugin_knife_windows_install_rubygem.rst

Requirements
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_winrm_requirements.rst

Domain Authentication
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_winrm_domain_authentication.rst

bootstrap windows ssh
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_bootstrap_windows_ssh.rst

Syntax
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_bootstrap_windows_ssh_syntax.rst

Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_bootstrap_windows_ssh_options.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Find Uptime for Web Servers**

.. include:: ../../step_plugin_knife/step_plugin_knife_windows_winrm_find_uptime.rst

**Force a chef-client run**

.. include:: ../../step_plugin_knife/step_plugin_knife_windows_winrm_force_chef_run.rst

**Bootstrap a Windows machine using SSH**

.. include:: ../../step_plugin_knife/step_plugin_knife_windows_bootstrap_ssh.rst

**Bootstrap a Windows machine using Windows Remote Management**

.. include:: ../../step_plugin_knife/step_plugin_knife_windows_bootstrap_winrm.rst



Resources
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks_resource.rst

Common Functionality 
-----------------------------------------------------
The following sections describe |windows|-specific functionality that applies generally to all resources:

Relative Paths
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_resource_common_relative_paths.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../step_resource/step_resource_template_use_relative_paths.rst

Windows File Security
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_common_windows_security.rst

.. note:: Windows File Security applies to the |resource cookbook_file|, |resource directory|, |resource file|, |resource remote_directory|, |resource remote_file|, and |resource template| resources.

Access Control Lists (ACLs)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_resources/includes_resource_common_windows_security_acl.rst

Inheritance
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_resources/includes_resource_common_windows_security_inherits.rst

Attributes for File-based Resources
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``group``
     - |windows group_identifier|
   * - ``inherits``
     - |windows| only. |inherits windows security| Default value: ``true``.
   * - ``mode``
     - |mode resource_file|
       
       |windows|: |mode windows security|
   * - ``owner``
     - |owner windows security|	
   * - ``path``
     - |path file|

       |windows|: A path that begins with a forward slash (``/``) will point to the root of the current working directory of the |chef client| process. This path can vary from system to system. Therefore, using a path that begins with a forward slash (``/``) is not recommended.
   * - ``rights``
     - |windows| only. |rights windows security|

.. note:: Use the ``owner`` and ``right`` attributes and avoid the ``group`` and ``mode`` attributes whenever possible. The ``group`` and ``mode`` attributes are not true |windows| concepts and are provided more for backward compatibility than for best practice.

Atomic File Updates
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_common_atomic_update.rst

.. note:: Atomic File Updates applies to the |resource template| resource.


batch
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_batch.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_batch_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_batch_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_batch_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_batch_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Unzip a file, and then move it**

.. include:: ../../step_resource/step_resource_batch_unzip_file_and_move.rst

env
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_env.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_env_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_env_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_env_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_env_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Set an environment variable**

.. include:: ../../step_resource/step_resource_environment_set_variable.rst

powershell_script
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_powershell_script.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_powershell_script_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_powershell_script_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_powershell_script_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_powershell_script_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Write to an interpolated path**

.. include:: ../../step_resource/step_resource_powershell_write_to_interpolated_path.rst

**Change the working directory**

.. include:: ../../step_resource/step_resource_powershell_cwd.rst

**Change the working directory in Microsoft Windows**

.. include:: ../../step_resource/step_resource_powershell_cwd_microsoft_env.rst

**Pass an environment variable to a script**

.. include:: ../../step_resource/step_resource_powershell_pass_env_to_script.rst

registry_key
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_registry_key.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_registry_key_syntax.rst

Registry Key Path Separators
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_resources/includes_resource_common_windows_registry_key_path_separators.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_registry_key_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_registry_key_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_registry_key_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Create a registry key**

.. include:: ../../step_resource/step_resource_registry_key_create.rst

**Delete a registry key value**

.. include:: ../../step_resource/step_resource_registry_key_delete_value.rst

**Delete a registry key and its subkeys, recursively**

.. include:: ../../step_resource/step_resource_registry_key_delete_recursively.rst

**Use re-directed keys**

.. include:: ../../step_resource/step_resource_registry_key_redirect.rst

Dedicated Providers
-----------------------------------------------------
The following resources have dedicated providers for the |windows| platform:

* |resource group|
* |resource mount|
* |resource service|
* |resource user|

supports Attribute
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The ``supports`` attribute can be used with the |resource user| resource.

.. include:: ../../includes_resources/includes_resource_user_supported_features.rst


Lightweight Resources
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp.rst

iis Lightweight Resources
-----------------------------------------------------
|cookbook name iis|

The |cookbook iis| cookbook contains the following lightweight resources: ``iis_app``, ``iis_config``, ``iis_module``, ``iis_pool``, and ``iis_site``.

.. note:: These lightweight resources are part of the |cookbook iis| cookbook (https://github.com/opscode-cookbooks/iis).

iis_app
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_app.rst

Actions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_iis_app_actions.rst

Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_iis_app_attributes.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../step_lwrp/step_lwrp_iis_app_create.rst


iis_config
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_config.rst

Actions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_iis_config_actions.rst

Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_iis_config_attributes.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../step_lwrp/step_lwrp_iis_config_load_array_of_commands.rst

.. include:: ../../step_lwrp/step_lwrp_iis_config_set_up_logging.rst

iis_module
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_module.rst

Actions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_iis_module_actions.rst

Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_iis_module_attributes.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../step_lwrp/step_lwrp_iis_module_add.rst


iis_pool
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_pool.rst

Actions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_iis_pool_actions.rst

Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_iis_pool_attributes.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../step_lwrp/step_lwrp_iis_pool_create.rst

iis_site
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_iis_site.rst

Actions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_iis_site_actions.rst

Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_iis_site_attributes.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../step_lwrp/step_lwrp_iis_site_start_and_map_to_domain.rst

.. include:: ../../step_lwrp/step_lwrp_iis_site_start_and_map_to_location.rst

.. include:: ../../step_lwrp/step_lwrp_iis_site_stop.rst


webpi Lightweight Resource
-----------------------------------------------------
|cookbook name webpi|

The |cookbook webpi| cookbook contains the following lightweight resource: ``webpi_product``.

webpi_product
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_webpi_product.rst

.. note:: This lightweight resource is part of the |cookbook webpi| cookbook (https://github.com/opscode-cookbooks/webpi).

Actions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_webpi_product_actions.rst

Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_webpi_product_attributes.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../step_lwrp/step_lwrp_webpi_product_install_powershell.rst

.. include:: ../../step_lwrp/step_lwrp_webpi_product_install_iis.rst


windows Lightweight Resources
-----------------------------------------------------
|cookbook name windows|

The |cookbook windows| cookbook contains the following lightweight resources: ``windows_auto_run``, ``windows_batch``, ``windows_feature``, ``windows_package``, ``windows_path``, ``windows_reboot``, ``windows_registry``, ``windows_shortcut``, and ``windows_zipfile``.

.. warning:: The |resource batch| resource was added to |chef 11-6| as a core resource. In general, it is recommended to use the |resource batch| resource instead of the ``windows_batch`` lightweight resource included in the |cookbook windows| cookbook whenever possible, including updating any existing recipes that may be using the older lightweight resource in favor of the newer resource.

.. note:: These lightweight resources are part of the |cookbook windows| cookbook (https://github.com/opscode-cookbooks/windows).

windows_auto_run
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_auto_run.rst

Actions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_windows_auto_run_actions.rst

Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_windows_auto_run_attributes.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../step_lwrp/step_lwrp_windows_auto_run_at_login.rst

windows_feature
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_feature.rst

Actions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_windows_feature_actions.rst

Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_windows_feature_attributes.rst

Providers
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_windows_feature_providers.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../step_lwrp/step_lwrp_windows_feature_enable.rst

.. include:: ../../step_lwrp/step_lwrp_windows_feature_disable.rst


windows_package
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_package.rst

Actions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_windows_package_actions.rst

Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_windows_package_attributes.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../step_lwrp/step_lwrp_windows_package_install_putty.rst

.. include:: ../../step_lwrp/step_lwrp_windows_package_install_7zip.rst

.. include:: ../../step_lwrp/step_lwrp_windows_package_remove_7zip.rst

.. include:: ../../step_lwrp/step_lwrp_windows_package_install_notepad_plusplus.rst

.. include:: ../../step_lwrp/step_lwrp_windows_package_install_firefox.rst

.. include:: ../../step_lwrp/step_lwrp_windows_package_install_vlc.rst

.. include:: ../../step_lwrp/step_lwrp_windows_package_install_google_chrome.rst

.. include:: ../../step_lwrp/step_lwrp_windows_package_remove_google_chrome.rst


windows_path
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_path.rst

Actions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_windows_path_actions.rst

Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_windows_path_attributes.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../step_lwrp/step_lwrp_windows_path_add.rst

.. include:: ../../step_lwrp/step_lwrp_windows_path_remove.rst


windows_reboot
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_reboot.rst

Actions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_windows_reboot_actions.rst

Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_windows_reboot_attributes.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../step_lwrp/step_lwrp_windows_reboot_schedule.rst

.. include:: ../../step_lwrp/step_lwrp_windows_reboot_cancel.rst

windows_shortcut
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_shortcut.rst

Actions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_windows_shortcut_actions.rst

Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_windows_shortcut_attributes.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
None.


windows_zipfile
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_windows_zipfile.rst

Actions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_windows_zipfile_actions.rst

Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_windows_zipfile_attributes.rst

Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../step_lwrp/step_lwrp_windows_zipfile_unzip_remote.rst

.. include:: ../../step_lwrp/step_lwrp_windows_zipfile_unzip_local.rst


Recipe DSL Methods
=====================================================
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe.rst

registry_data_exists? Method
-----------------------------------------------------

.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_registry_data_exists.rst

registry_get_subkeys Method
-----------------------------------------------------

.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_registry_get_subkeys.rst

registry_get_values Method
-----------------------------------------------------

.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_registry_get_values.rst

registry_has_subkeys? Method
-----------------------------------------------------

.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_registry_has_subkeys.rst

registry_key_exists? Method
-----------------------------------------------------

.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_registry_key_exists.rst

registry_value_exists? Method
-----------------------------------------------------

.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_registry_value_exists.rst


|chef client|
=====================================================
.. include:: ../../includes_chef/includes_chef_client.rst

.. include:: ../../includes_ctl_chef_client/includes_ctl_chef_client_options_windows.rst

.. note:: |chef solo| also uses the ``--daemonize`` setting for |windows|.

Run with Elevated Privileges
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_client/includes_ctl_chef_client_elevated_privileges.rst

.. include:: ../../includes_ctl_chef_client/includes_ctl_chef_client_elevated_privileges_windows.rst

|knife rb|
=====================================================
|note knife rb windows path|

