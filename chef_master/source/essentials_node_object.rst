=====================================================
About Node Objects
=====================================================

.. include:: ../../includes_node/includes_node_object.rst

.. include:: ../../includes_node/includes_node_attribute.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Method
     - Description
   * - :doc:`essentials_node_object_deep_merge`
     - Attributes can be layered across cookbooks (and recipes), roles, and environments so that they can be re-used across nodes.
   * - :doc:`essentials_node_object_run_lists`
     - A run-list is an ordered list of roles and/or recipes that are run in an exact order and that is always specific to the node on which it runs.

.. include:: ../../includes_node/includes_node_object_set.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Method
     - Description
   * - :doc:`essentials_node_object_attributes_types`
     - There are four types of attributes: ``default``, ``normal``, ``override``, and ``automatic``. Both ``default`` and ``override`` attributes can be forced on a case-by-case basis.
   * - :doc:`essentials_node_object_attributes_persistence`
     - During a |chef| run, saved attributes are retrieved from the |chef server| and are merged with the attributes on the local system.
   * - :doc:`essentials_node_object_attributes_precedence`
     - At the beginning of a |chef| run, all default, override, and automatic attributes are reset.
   * - :doc:`essentials_node_object_attributes_automatic`
     - An automatic attribute is data that must be understood by |chef|, but not modified.
   * - :doc:`essentials_node_object_attributes_notation`
     - Attributes are a special key-value store called a mash within the context of the |ruby| DSL.

.. toctree::
   :hidden:

   essentials_node_object_deep_merge
   essentials_node_object_run_lists
   essentials_node_object_attributes_types
   essentials_node_object_attributes_persistence
   essentials_node_object_attributes_precedence
   essentials_node_object_attributes_automatic
   essentials_node_object_attributes_notation
