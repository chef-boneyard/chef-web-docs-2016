=====================================================
deploy
=====================================================

.. include:: ../../swaps/swap_descriptions.txt
.. include:: ../../swaps/swap_http.txt
.. include:: ../../swaps/swap_names.txt
.. include:: ../../swaps/swap_notes.txt
.. include:: ../../swaps/swap_resources.txt

.. include:: ../../includes_resources/includes_resource_deploy.rst

Deployment Strategies
=====================================================
.. include:: ../../includes_resources/includes_resource_deploy_strategy.rst

Deployment Phases
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_deploy_strategy_phases.rst

Callbacks
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_deploy_strategy_callbacks.rst

Custom Application Layouts
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_deploy_strategy_layouts.rst

Starting Over
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_deploy_strategy_start_over.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_deploy_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_deploy_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_deploy_providers.rst

``timestamped_deploy``
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|timestamped_deploy provider deploy|

``deploy_revision`` and ``deploy_branch``
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|deploy_revision provider deploy|

Examples
=====================================================
.. include:: ../../steps/step_chef_resource_deploy_add_private_key_from_data_bag.rst

.. include:: ../../steps/step_chef_resource_deploy_add_private_key_from_recipe.rst

.. include:: ../../steps/step_chef_resource_deploy_basic.rst

.. include:: ../../steps/step_chef_resource_deploy_custom_application_layout.rst

.. include:: ../../steps/step_chef_resource_deploy_embedded_recipes_for_callbacks.rst

.. include:: ../../steps/step_chef_resource_deploy_private_git_repo_using_application_cookbook.rst

.. include:: ../../steps/step_chef_resource_deploy_recipe_uses_ssh_wrapper.rst

.. include:: ../../steps/step_chef_resource_deploy_use_same_api_as_gitdeploy_gems.rst

.. include:: ../../steps/step_chef_resource_deploy_without_symlink_to_shared.rst