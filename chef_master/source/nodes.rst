.. THIS PAGE IS IDENTICAL TO docs.getchef.com/chef_overview_nodes.html BY DESIGN
.. THIS PAGE DOCUMENTS chef-client version 12.0

=====================================================
About Nodes
=====================================================

.. include:: ../../includes_node/includes_node.rst

There following types of nodes can be managed by the |chef client|:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Feature
     - Description
   * - .. image:: ../../images/icon_node_cloud.png
     - .. include:: ../../includes_node/includes_node_type_cloud.rst
   * - .. image:: ../../images/icon_node_physical.png
     - .. include:: ../../includes_node/includes_node_type_physical.rst
   * - .. image:: ../../images/icon_node_virtual.png
     - .. include:: ../../includes_node/includes_node_type_virtual.rst
   * - .. image:: ../../images/icon_node_container.png
     - .. include:: ../../includes_containers/includes_containers.rst
   * - .. image:: ../../images/icon_node_networking.png
     - .. include:: ../../includes_node/includes_node_type_network.rst

Some important components of nodes include:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Feature
     - Description
   * - .. image:: ../../images/icon_chef_client.png
     - .. include:: ../../includes_chef_client/includes_chef_client.rst
   * - .. image:: ../../images/icon_ohai.png
     - .. include:: ../../includes_ohai/includes_ohai.rst

The |chef client_title| Run
=====================================================
.. include:: ../../includes_chef_client/includes_chef_client_run.rst

About Node Names
=====================================================
.. include:: ../../includes_node/includes_node_name.rst

Manage Nodes
=====================================================

.. This section is just tossed in here to keep track of it. Probably needs a super-heavy edit. And much of it probably lives elsewhere.

.. include:: ../../includes_node/includes_node_manage.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_attribute_when_to_use.rst

.. include:: ../../includes_node/includes_node_attribute_when_to_use_unless_variants.rst

.. note:: |note see_attributes_overview|

Attribute Types
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_node/includes_node_attribute_type.rst

Attribute Persistence
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_node/includes_node_attribute_persistence.rst

Attribute Precedence
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_node/includes_node_attribute_precedence.rst

Whitelist Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_node/includes_node_attribute_whitelist.rst