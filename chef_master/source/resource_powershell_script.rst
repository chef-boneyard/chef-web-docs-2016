=====================================================
powershell_script
=====================================================

A `resource <http://docs.opscode.com/resource.html>`_ is a key part of a `recipe <http://docs.opscode.com/essentials_cookbook_recipes.html>`_ that defines the actions that can be taken against a piece of the system. These actions are identified during each `Chef run <http://docs.opscode.com/essentials_nodes_chef_run.html>`_ as the resource collection is compiled. Once identified, each resource (in turn) is mapped to a provider, which then configures each piece of the system.

.. include:: ../../includes_resources/includes_resource_powershell_script.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_powershell_script_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_powershell_script_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_powershell_script_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_powershell_script_providers.rst

Examples
=====================================================
|generic resource statement|

**Write to an interpolated path**

.. include:: ../../step_resource/step_resource_powershell_write_to_interpolated_path.rst

**Change the working directory**

.. include:: ../../step_resource/step_resource_powershell_cwd.rst

**Change the working directory in Microsoft Windows**

.. include:: ../../step_resource/step_resource_powershell_cwd_microsoft_env.rst

**Pass an environment variable to a script**

.. include:: ../../step_resource/step_resource_powershell_pass_env_to_script.rst