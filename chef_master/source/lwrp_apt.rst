=====================================================
apt Lightweight Resources
=====================================================

|cookbook name apt|

The |cookbook apt| cookbook contains the following resources: ``apt_preference`` and ``apt_repository``.

.. note:: These resources are part of the |cookbook apt| cookbook: https://github.com/opscode-cookbooks/apt.

apt_preference
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_apt_preference.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_apt_preference_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_apt_preference_attributes.rst

Examples
-----------------------------------------------------
The following examples show how to use the ``apt_preference`` resource:

**Pin a package**

.. include:: ../../step_lwrp/step_lwrp_apt_preference_pin.rst

**Unpin a package**

.. include:: ../../step_lwrp/step_lwrp_apt_preference_unpin.rst


apt_repository
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_apt_repository.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_apt_repository_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_apt_repository_attributes.rst

Examples
-----------------------------------------------------
The following examples show how to use the ``apt_repository`` resource:

**Add the CloudKick repository**

.. include:: ../../step_lwrp/step_lwrp_apt_repository_add_cloudkick.rst

**Add opscode.list**

.. include:: ../../step_lwrp/step_lwrp_apt_repository_add_opscode_list.rst

**Add hardy-rsyslog-ppa.list**

.. include:: ../../step_lwrp/step_lwrp_apt_repository_add_ppa_list.rst

**Add Zenoss**

.. include:: ../../step_lwrp/step_lwrp_apt_repository_add_zenoss.rst

**Remove Zenoss**

.. include:: ../../step_lwrp/step_lwrp_apt_repository_remove_zenoss.rst