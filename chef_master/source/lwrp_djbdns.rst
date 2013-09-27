=====================================================
djbdns Lightweight Resource
=====================================================

|cookbook name djbdns|

The |cookbook djbdns| cookbook contains the following lightweight resource: ``djbdns_rr``.

djbdns_rr=====================================================
dmg Lightweight Resource
=====================================================

|cookbook name dmg|

The |cookbook dmg| cookbook contains the following lightweight resource: ``dmg_package``.

dmg_package
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_dmg_package.rst

.. note:: This lightweight resource does not do full package management for |mac os x| applications, as they have different installed artifacts.

.. note:: This lightweight resource is part of the |cookbook dmg| cookbook (https://github.com/opscode-cookbooks/dmg).

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_dmg_package_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_dmg_package_attributes.rst

Examples
-----------------------------------------------------
.. include:: ../../step_lwrp/step_lwrp_dmg_package_install_google_chrome.rst

.. include:: ../../step_lwrp/step_lwrp_dmg_package_already_downloaded_app.rst

.. include:: ../../step_lwrp/step_lwrp_dmg_package_install_dropbox.rst

.. include:: ../../step_lwrp/step_lwrp_dmg_package_macirssi.rst

.. include:: ../../step_lwrp/step_lwrp_dmg_package_install_tunnelblick.rst
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_djbdns_rr.rst

.. note:: This lightweight resource is part of the |cookbook djbdns| cookbook (https://github.com/opscode-cookbooks/djbdns).

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_djbdns_rr_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_djbdns_rr_attributes.rst

Examples
-----------------------------------------------------
.. include:: ../../step_lwrp/step_lwrp_djbdns_rr_configure_for_tinydns.rst