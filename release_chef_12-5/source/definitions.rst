.. THIS PAGE IS IDENTICAL TO docs.chef.io/definitions.html BY DESIGN
.. THIS PAGE DOCUMENTS chef-client version 12.5

=====================================================
About Definitions
=====================================================

.. warning:: Starting with |chef client| 12.5, it is recommended to :doc:`build custom resources </custom_resources>` instead of definitions. While the use of definitions is not deprecated---all existing definitions will continue to work---it is recommended to also migrate existing definitions to the new custom resource patterns. This topic introduces definitions as they once were (and still can be, if desired), but deprecates examples of using them in favor of showing how to migrate an existing definition to the new custom resource pattern.

.. include:: ../../includes_definition/includes_definition.rst

Syntax (pre-12.5)
=====================================================
.. include:: ../../includes_definition/includes_definition_12-4_syntax.rst

Examples
=====================================================
The following examples show how to use cookbook definitions.

Many Recipes, One Definition
-----------------------------------------------------
.. include:: ../../includes_definition/includes_definition_scenario_many_recipes_one_definition.rst

Definition vs. Resource
=====================================================
This section shows a definition, and then that definition as custom resource. It also shows how to break that custom resource down into simpler, platform-specific resources.

Definition
-----------------------------------------------------
.. include:: ../../includes_definition/includes_definition_migrate_before.rst

Custom Resource
-----------------------------------------------------
.. include:: ../../includes_definition/includes_definition_migrate_after.rst

By Platform
-----------------------------------------------------
.. include:: ../../includes_definition/includes_definition_migrate_after_by_platform.rst

``debian``
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_definition/includes_definition_migrate_after_by_platform_debian.rst

``rhel``
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_definition/includes_definition_migrate_after_by_platform_rhel.rst

``omnios``
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_definition/includes_definition_migrate_after_by_platform_omnios.rst
