=====================================================
Notes for |chef client| Upgrades 
=====================================================

The following sections contain more information about the upgrade process from earlier versions of the |chef client| to the |chef client| 12 release.

|resource execute| Resource, ``path`` Attribute
=====================================================
.. include:: ../../includes_resources_common/includes_resources_common_resource_execute_attribute_path.rst

Chef::Provider, Custom Resources
=====================================================
.. include:: ../../includes_libraries/includes_libraries_syntax_lwrpbase_example.rst

node.default! => force_default
=====================================================
In previous versions of the |chef client|, ``node.default!`` was an alias of ``node.force_default!``. Starting with |chef client| 12, ``node.force_default`` is changed from an accessor to a setter. Cookbooks that use ``node.default!`` must be updated for the correct attribute precedence type and must drop the exclamation point. For example:

.. code-block:: ruby

   node.default![:foo] = 'bar'

must be updated to:

.. code-block:: ruby

   node.force_default[:foo] = 'bar'

node.override! => force_override
=====================================================
In previous versions of the |chef client|, ``node.override!`` was an alias of ``node.force_override``. Starting with |chef client| 12, ``node.force_override`` is changed from an accessor to a setter. Cookbooks that use ``node.override!`` must be updated for the correct attribute precedence type and must drop the exclamation point. For example:

.. code-block:: ruby

   node.override![:foo] = 'bar'

must be updated to:

.. code-block:: ruby

   node.force_override[:foo] = 'bar'
