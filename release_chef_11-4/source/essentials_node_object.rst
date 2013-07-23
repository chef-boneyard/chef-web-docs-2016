=====================================================
About Node Objects
=====================================================

.. warning:: |note doc_version_11-4|

.. include:: ../../includes_node/includes_node_object.rst

.. include:: ../../includes_node/includes_node_attribute.rst

Attributes
=====================================================
.. include:: ../../includes_node/includes_node_attribute_when_to_use.rst

.. note:: Attributes can be configured in cookbooks (attribute files and recipes), roles, and environments. In addition, |ohai| collects attribute data about each node at the start of the |chef| run. See the :doc:`overview of attributes </chef_overview_attributes>` for more information about how all of these attributes fit together.

Attribute Types
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_attribute_type.rst

Attribute Persistence
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_attribute_persistence.rst

Attribute Precedence
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_attribute_precedence.rst

.. toctree::
   :hidden:

   essentials_node_object_deep_merge
   essentials_node_object_run_lists
