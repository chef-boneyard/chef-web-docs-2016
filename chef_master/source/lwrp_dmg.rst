=====================================================
dmg Lightweight Resource
=====================================================

|cookbook name dmg|

The |cookbook dmg| cookbook contains the following resource: ``dmg_package``.

dmg_package
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_dmg_package.rst

.. note:: This resource does not do full package management for |mac os x| applications, as they have different installed artifacts.

.. note:: This resource is part of the |cookbook dmg| cookbook: https://github.com/opscode-cookbooks/dmg.

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_dmg_package_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_dmg_package_attributes.rst

Examples
-----------------------------------------------------
The following examples show how to use the ``dmg_package`` resource:

**Install Google Chrome**

.. include:: ../../step_lwrp/step_lwrp_dmg_package_install_google_chrome.rst

**Install a previously-downloaded application**

.. include:: ../../step_lwrp/step_lwrp_dmg_package_already_downloaded_app.rst

**Install DropBox**

.. include:: ../../step_lwrp/step_lwrp_dmg_package_install_dropbox.rst

**Install MacIrssi**

.. include:: ../../step_lwrp/step_lwrp_dmg_package_macirssi.rst

**Install Tunnelblick.app**

.. include:: ../../step_lwrp/step_lwrp_dmg_package_install_tunnelblick.rst