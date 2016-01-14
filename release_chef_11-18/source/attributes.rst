.. THIS PAGE DOCUMENTS chef-client version 11.18

=====================================================
About Attributes
=====================================================

.. include:: ../../includes_node/includes_node_attribute.rst

.. include:: ../../includes_node/includes_node_attribute_how_does.rst

Changes in Chef 12.0
=====================================================
Please `see RFC-23 for important changes to attributes <https://github.com/chef/chef-rfc/blob/master/rfc023-chef-12-attributes-changes.md>`_ in |chef client| 12, including how to delete an attribute key for a specific precedence level, how to delete an attribute key for all precedence levels, and how to overwrite the nested value at a specific precedence level. In addition, ``node.default!`` is now ``node.force_default`` and ``node.override!`` is now ``node.force_override``.

**node.force_default**

.. include:: ../../includes_node/includes_node_attribute_type_force_default_changes.rst

**node.force_override**

.. include:: ../../includes_node/includes_node_attribute_type_force_override_changes.rst

Attribute Persistence
=====================================================
.. include:: ../../includes_node/includes_node_attribute_persistence.rst

Attribute Types
=====================================================
.. include:: ../../includes_node/includes_node_attribute_type.rst

.. include:: ../../includes_node/includes_node_attribute_persistence.rst

Attribute Sources
=====================================================
.. include:: ../../includes_node/includes_node_11x_attribute_sources.rst

Automatic (|ohai|)
-----------------------------------------------------
.. include:: ../../includes_ohai/includes_ohai_automatic_attribute.rst

.. include:: ../../includes_ohai/includes_ohai_attribute_list.rst

Attribute Files
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_file.rst

Attribute Evaluation Order
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_attribute_evaluation_order.rst

Accessor Methods
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_file_methods_accessor.rst

Use Attribute Files
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_node/includes_node_attribute_when_to_use.rst

.. include:: ../../includes_node/includes_node_attribute_when_to_use_unless_variants.rst

.. note:: .. include:: ../../includes_notes/includes_notes_see_attributes_overview.rst

File Methods
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_file_methods.rst

**attribute?**

.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_file_methods_attribute.rst

Recipes
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_recipe.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_attribute.rst

Roles
-----------------------------------------------------
.. include:: ../../includes_role/includes_role.rst

.. include:: ../../includes_role/includes_role_attribute.rst

Environments
-----------------------------------------------------
.. include:: ../../includes_environment/includes_environment.rst

.. include:: ../../includes_environment/includes_environment_attribute.rst

Attribute Precedence
=====================================================
.. include:: ../../includes_node/includes_node_11x_attribute_precedence.rst

Whitelist Attributes
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_attribute_whitelist.rst

Examples
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_11x_attribute_precedence_examples.rst

About Deep Merge
=====================================================
.. include:: ../../includes_node/includes_node_attribute_deep_merge.rst

The following sections show how the logic works for using deep merge to perform substitutions and additions of attributes.

Substitution
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_attribute_deep_merge_substitute.rst

Addition
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_attribute_deep_merge_add.rst