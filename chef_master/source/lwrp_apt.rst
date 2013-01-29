=====================================================
apt Lightweight Resource
=====================================================

|cookbook name apt|

The ``apt`` cookbook contains the following lightweight resources: ``apt_preference`` and ``apt_repository``.

apt_preference
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_apt_preference.rst

.. note:: This lightweight resource is part of the ``apt`` cookbook (http://community.opscode.com/cookbooks/apt).

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_apt_preference_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_apt_preference_attributes.rst

Examples
-----------------------------------------------------
.. include:: ../../step_lwrp/step_lwrp_apt_preference_pin.rst

.. include:: ../../step_lwrp/step_lwrp_apt_preference_unpin.rst


apt_repository
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_apt_repository.rst

.. note:: This lightweight resource is part of the ``apt`` cookbook (http://community.opscode.com/cookbooks/apt).

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_apt_repository_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_apt_repository_attributes.rst

Examples
-----------------------------------------------------
.. include:: ../../step_lwrp/step_lwrp_apt_repository_add_cloudkick.rst

.. include:: ../../step_lwrp/step_lwrp_apt_repository_add_opscode_list_alternate.rst

.. include:: ../../step_lwrp/step_lwrp_apt_repository_add_opscode_list.rst

.. include:: ../../step_lwrp/step_lwrp_apt_repository_add_ppa_list.rst

.. include:: ../../step_lwrp/step_lwrp_apt_repository_add_zenoss.rst

.. include:: ../../step_lwrp/step_lwrp_apt_repository_remove_zenoss.rst