=====================================================
rabbitmq Lightweight Resources
=====================================================

|cookbook name rabbitmq|

The |cookbook rabbitmq| cookbook contains the following resources: ``rabbitmq_plugin``, ``rabbitmq_user``, and ``rabbitmq_vhost``.

.. note:: These resources are part of the |cookbook rabbitmq| cookbook: https://github.com/opscode-cookbooks/rabbitmq.

rabbitmq_plugin
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_plugin.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_plugin_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_plugin_attributes.rst

Examples
-----------------------------------------------------
The following examples show how to use the ``rabbitmq_plugin`` resource:

**Enable a plugin**

.. include:: ../../step_lwrp/step_lwrp_rabbitmq_plugin_enable.rst

**Disable a plugin**

.. include:: ../../step_lwrp/step_lwrp_rabbitmq_plugin_disable.rst

rabbitmq_user
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_user.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_user_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_user_attributes.rst

Examples
-----------------------------------------------------
The following examples show how to use the ``rabbitmq_user`` resource:

**Add a user**

.. include:: ../../step_lwrp/step_lwrp_rabbitmq_user_add.rst

**Delete a user**

.. include:: ../../step_lwrp/step_lwrp_rabbitmq_user_delete.rst

**Set user permissions**

.. include:: ../../step_lwrp/step_lwrp_rabbitmq_user_set_permissions.rst


rabbitmq_vhost
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_vhost.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_vhost_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_rabbitmq_vhost_attributes.rst

Examples
-----------------------------------------------------
The following example shows how to use the ``rabbitmq_vhost`` resource:

**Add a virtual host**

.. include:: ../../step_lwrp/step_lwrp_rabbitmq_vhost_add.rst