=====================================================
deploy
=====================================================

.. include:: ../../swaps/swap_desc_a.txt
.. include:: ../../swaps/swap_desc_b.txt
.. include:: ../../swaps/swap_desc_c.txt
.. include:: ../../swaps/swap_desc_d.txt
.. include:: ../../swaps/swap_desc_e.txt
.. include:: ../../swaps/swap_desc_f.txt
.. include:: ../../swaps/swap_desc_g.txt
.. include:: ../../swaps/swap_desc_h.txt
.. include:: ../../swaps/swap_desc_i.txt
.. include:: ../../swaps/swap_desc_j.txt
.. include:: ../../swaps/swap_desc_k.txt
.. include:: ../../swaps/swap_desc_l.txt
.. include:: ../../swaps/swap_desc_m.txt
.. include:: ../../swaps/swap_desc_n.txt
.. include:: ../../swaps/swap_desc_o.txt
.. include:: ../../swaps/swap_desc_p.txt
.. include:: ../../swaps/swap_desc_q.txt
.. include:: ../../swaps/swap_desc_r.txt
.. include:: ../../swaps/swap_desc_s.txt
.. include:: ../../swaps/swap_desc_t.txt
.. include:: ../../swaps/swap_desc_u.txt
.. include:: ../../swaps/swap_desc_v.txt
.. include:: ../../swaps/swap_desc_w.txt
.. include:: ../../swaps/swap_desc_x.txt
.. include:: ../../swaps/swap_desc_y.txt
.. include:: ../../swaps/swap_desc_z.txt
.. include:: ../../swaps/swap_http.txt
.. include:: ../../swaps/swap_names.txt
.. include:: ../../swaps/swap_notes.txt

.. include:: ../../includes_resources/includes_resource_deploy.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_deploy_syntax.rst

Deploy Strategies
=====================================================
.. include:: ../../includes_resources/includes_resource_deploy_strategy.rst

Deploy Phases
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_deploy_strategy_phases.rst

Deploy Cache File
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_resources/includes_resource_deploy_strategy_start_over.rst

Callbacks
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_deploy_strategy_callbacks.rst

Layout Modifiers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_deploy_strategy_layouts.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_deploy_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_deploy_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_deploy_providers.rst

deploy_branch
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_deploy_providers_deploy_branch.rst

deploy_revision
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_deploy_providers_deploy_resource.rst

timestamped_deploy
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_deploy_providers_timestamped_deploy.rst

Examples
=====================================================
The following examples show how to use the |resource deploy| resource.

**Modify the layout of a Ruby on Rails application**

.. include:: ../../step_resource/step_resource_deploy_custom_application_layout.rst

**Use resources within callbacks**

.. include:: ../../step_resource/step_resource_deploy_embedded_recipes_for_callbacks.rst

**Deploy from a private git repository without using the application cookbook**

.. include:: ../../step_resource/step_resource_deploy_private_git_repo_using_application_cookbook.rst

**Use an SSH wrapper**

.. include:: ../../step_resource/step_resource_deploy_recipe_uses_ssh_wrapper.rst

**Use a callback to include a file that will be passed as a code block**

.. include:: ../../step_resource/step_resource_deploy_use_callback_to_include_code_from_file.rst

**Use a callback to pass a code block**

.. include:: ../../step_resource/step_resource_deploy_use_callback_to_pass_python.rst

**Use the same API for all recipes using the same gem**

.. include:: ../../step_resource/step_resource_deploy_use_same_api_as_gitdeploy_gems.rst

**Deploy without creating symbolic links to a shared folder**

.. include:: ../../step_resource/step_resource_deploy_without_symlink_to_shared.rst

**Clear a layout modifier attribute**

.. include:: ../../step_resource/step_resource_deploy_clear_layout_modifiers.rst