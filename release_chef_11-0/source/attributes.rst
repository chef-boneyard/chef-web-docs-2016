.. THIS PAGE DOCUMENTS chef-client version 11.0

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

Examples
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_11x_attribute_precedence_examples.rst
