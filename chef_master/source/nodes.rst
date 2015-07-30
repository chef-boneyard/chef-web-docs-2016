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

About Run-lists
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_run_list.rst

Run-list Format
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_node/includes_node_run_list_format.rst

Empty Run-lists
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_node/includes_node_run_list_empty.rst

About why-run Mode
=====================================================

.. include:: ../../includes_chef_client/includes_chef_client_whyrun_mode.rst

.. include:: ../../includes_chef_client/includes_chef_client_whyrun_mode_assumptions.rst

For example, the |resource service| resource can be used to start a service. If the action is ``:start`` and the service is not running, then start the service (if it is not running) and do nothing (if it is running). What about a service that is installed from a package? The |chef client| cannot check to see if the service is running until after the package is installed. A simple question that |whyrun| mode can answer is what the |chef client| would say about the state of the service after installing the package because service actions often trigger notifications to other resources. So it can be important to know in advance that any notifications are being triggered correctly.

For a detailed explanation of the dry-run concept and how it relates to the |whyrun| mode, see `this blog post <http://blog.afistfulofservers.net/post/2012/12/21/promises-lies-and-dryrun-mode/>`_.

About Node Names
=====================================================
.. include:: ../../includes_node/includes_node_name.rst

Manage Nodes
=====================================================

.. This section is just tossed in here to keep track of it. Probably needs a super-heavy edit. And much of it probably lives elsewhere.

.. include:: ../../includes_node/includes_node_manage.rst

Node Objects
=====================================================

.. include:: ../../includes_node/includes_node_object.rst

.. include:: ../../includes_node/includes_node_attribute.rst

Attributes
=====================================================
.. include:: ../../includes_node/includes_node_attribute_when_to_use.rst

.. include:: ../../includes_node/includes_node_attribute_when_to_use_unless_variants.rst

.. note:: .. include:: ../../includes_notes/includes_notes_see_attributes_overview.rst

Attribute Types
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_attribute_type.rst

Attribute Persistence
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_attribute_persistence.rst

Attribute Precedence
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_attribute_precedence.rst

Whitelist Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_node/includes_node_attribute_whitelist.rst
