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

Migrate to Custom Resource
=====================================================
This section shows a definition, and then that definition as custom resource.

Old Definition
-----------------------------------------------------
.. include:: ../../includes_definition/includes_definition_migrate_before.rst

New Custom Resource
-----------------------------------------------------
.. include:: ../../includes_custom_resources/includes_custom_resources.rst

.. include:: ../../includes_definition/includes_definition_migrate_after.rst
