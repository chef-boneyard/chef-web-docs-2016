.. THIS PAGE IS IDENTICAL TO docs.chef.io/definitions.html BY DESIGN
.. THIS PAGE DOCUMENTS chef-client version 12.5

=====================================================
About Definitions
=====================================================

.. warning:: It is generally recommended to :doc:`build custom resources </custom_resources>` instead of definitions.  Definitions are not deprecated, but most uses of definitions are better implemented as custom resources.

.. include:: ../../includes_definition/includes_definition.rst

Syntax
=====================================================
.. include:: ../../includes_definition/includes_definition_12-4_syntax.rst

Definition vs. Resource
=====================================================
This section shows a definition, and then that definition as custom resource. It also shows how to break that custom resource down into simpler, platform-specific resources.

Definition
-----------------------------------------------------
.. include:: ../../includes_definition/includes_definition_migrate_before.rst

Custom Resource
-----------------------------------------------------
.. include:: ../../includes_definition/includes_definition_migrate_after.rst

