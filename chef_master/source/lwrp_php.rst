=====================================================
php Lightweight Resources
=====================================================

|cookbook name php|

The |cookbook php| cookbook contains the following resources: ``php_pear`` and ``php_pear_channel``.

.. note:: These resources are part of the |cookbook php| cookbook: https://github.com/opscode-cookbooks/php.

php_pear
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_php_pear_default.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_php_pear_default_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_php_pear_default_attributes.rst

Examples
-----------------------------------------------------
The following examples show how to use the ``php_pear`` resource:

**Install extensions for Alternative PHP Cache**

.. include:: ../../step_lwrp/step_lwrp_php_pear_install_apc_pecl.rst

**Install the Horde_Url beta**

.. include:: ../../step_lwrp/step_lwrp_php_pear_install_horde_beta.rst

**Install extensions for MongoDB**

.. include:: ../../step_lwrp/step_lwrp_php_pear_install_mongodb_pecl.rst

**Install a specific version**

.. include:: ../../step_lwrp/step_lwrp_php_pear_install_specific_version.rst

**Install the YAML PEAR**

.. include:: ../../step_lwrp/step_lwrp_php_pear_install_yaml.rst

**Upgrade a PEAR**

.. include:: ../../step_lwrp/step_lwrp_php_pear_upgrade.rst

php_pear_channel
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_php_pear_channel.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_php_pear_channel_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_php_pear_channel_attributes.rst

Examples
-----------------------------------------------------
The following examples show how to use the ``php_pear_channel`` resource:

**Discover horde**

.. include:: ../../step_lwrp/step_lwrp_php_pear_channel_discover_horde.rst

**Download file, add to channel**

.. include:: ../../step_lwrp/step_lwrp_php_pear_channel_download_then_add.rst

**Update main channels**

.. include:: ../../step_lwrp/step_lwrp_php_pear_channel_update_main_channels.rst