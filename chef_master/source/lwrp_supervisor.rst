=====================================================
supervisor Lightweight Resources
=====================================================

|cookbook name supervisor|

The |cookbook supervisor| cookbook contains the following resources: ``supervisor_fcgi``, ``supervisor_group``, and ``supervisor_service``.

.. note:: These resources are part of the |cookbook supervisor| cookbook: https://github.com/opscode-cookbooks/supervisor.

supervisor_fcgi
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_supervisor_fcgi.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_supervisor_fcgi_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_supervisor_fcgi_attributes.rst

Examples
-----------------------------------------------------
None.


supervisor_group
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_supervisor_group.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_supervisor_group_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_supervisor_group_attributes.rst

Examples
-----------------------------------------------------
None.


supervisor_service
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_supervisor_service.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_supervisor_service_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_supervisor_service_attributes.rst

Examples
-----------------------------------------------------
The following example shows how to use the ``supervisor_service`` resource:

**Enable a service**

.. include:: ../../step_lwrp/step_lwrp_supervisor_service_enable.rst