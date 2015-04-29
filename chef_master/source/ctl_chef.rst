=====================================================
|chef ctl| (executable)
=====================================================

.. include:: ../../includes_ctl_chef/includes_ctl_chef.rst

chef exec
=====================================================
.. include:: ../../includes_ctl_chef/includes_ctl_chef_exec.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_exec_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_exec_options.rst

Examples
-----------------------------------------------------
None.

chef gem
=====================================================
.. include:: ../../includes_ctl_chef/includes_ctl_chef_gem.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_gem_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_gem_options.rst

Examples
-----------------------------------------------------

**Show an existing gem in the chef-dk**

.. include:: ../../step_ctl_chef/step_ctl_chef_gem_show.rst

**Install a gem**

.. include:: ../../step_ctl_chef/step_ctl_chef_gem_install.rst

**View the contents of a gem**

.. include:: ../../step_ctl_chef/step_ctl_chef_gem_view.rst

chef generate app
=====================================================
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_app.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_app_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_app_options.rst

Examples
-----------------------------------------------------

**Create an application**

.. include:: ../../step_ctl_chef/step_ctl_chef_generate_application.rst

chef generate attribute
=====================================================
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_attribute.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_attribute_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_attribute_options.rst

Examples
-----------------------------------------------------

**Create an attribute**

.. include:: ../../step_ctl_chef/step_ctl_chef_generate_attribute.rst

chef generate cookbook
=====================================================
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_cookbook.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_cookbook_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_cookbook_options.rst

Examples
-----------------------------------------------------

**Create a cookbook**

.. include:: ../../step_ctl_chef/step_ctl_chef_generate_cookbook.rst

**Create a cookbook using a custom skeleton cookbook**

.. include:: ../../step_ctl_chef/step_ctl_chef_generate_cookbook_skeleton.rst

chef generate file
=====================================================
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_file.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_file_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_file_options.rst

Examples
-----------------------------------------------------
None.

chef generate lwrp
=====================================================
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_lwrp.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_lwrp_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_lwrp_options.rst

Examples
-----------------------------------------------------
None.

chef generate recipe
=====================================================
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_recipe.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_recipe_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_recipe_options.rst

Examples
-----------------------------------------------------
None.

chef generate template
=====================================================
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_template.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_template_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_generate_template_options.rst

Examples
-----------------------------------------------------
None.


chef install
=====================================================
.. include:: ../../includes_ctl_chef/includes_ctl_chef_install.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_install_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_install_options.rst

Examples
-----------------------------------------------------
None.


chef push
=====================================================
.. include:: ../../includes_ctl_chef/includes_ctl_chef_push.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_push_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_push_options.rst

Examples
-----------------------------------------------------
None.


chef shell-init
=====================================================
.. include:: ../../includes_ctl_chef/includes_ctl_chef_shell_init.rst

bash zsh fish PowerShell (posh)

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_shell_init_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_shell_init_options.rst

Examples
-----------------------------------------------------

**Set PowerShell (in the current Windows session)**

.. code-block:: bash

   $ posh chef shell-init powershell | Invoke-Expression

**Set PowerShell**

.. code-block:: bash

   $ posh "chef shell-init powershell | Invoke-Expression" >> $PROFILE


chef verify
=====================================================
.. include:: ../../includes_ctl_chef/includes_ctl_chef_verify.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_verify_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_chef/includes_ctl_chef_verify_options.rst

Examples
-----------------------------------------------------
None.