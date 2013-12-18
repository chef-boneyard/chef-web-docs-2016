=====================================================
yum Lightweight Resources
=====================================================

|cookbook name yum|

.. warning:: The |cookbook name yum| cookbook, version 3.0.0 (and above) contains non-backwards compatible breaking changes and will not work with cookbooks written against previous versions. The |lwrp yum repository| has changed, the |lwrp yum globalconfig| is new, and the **yum_key** resource has been deprecated. Recipes have been moved into their own cookbooks. If your organization is using an older version of the |cookbook name yum| cookbook, lock |yum| to it until all dependent cookbooks have been updated to the current version.

The |cookbook yum| cookbook contains the following lightweight resources: ``yum_globalconfig`` and ``yum_repository``.

.. note:: These lightweight resources are part of the |cookbook yum| cookbook (https://github.com/opscode-cookbooks/yum).

Repository Cookbooks
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_yum_repos.rst

yum_globalconfig
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_yum_globalconfig.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_yum_globalconfig_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_yum_globalconfig_attributes.rst

Examples
-----------------------------------------------------
.. include:: ../../step_lwrp/step_lwrp_yum_globalconfig_add.rst


yum_repository
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_yum_repository.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_yum_repository_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_yum_repository_attributes.rst

Examples
-----------------------------------------------------
.. include:: ../../step_lwrp/step_lwrp_yum_repository_add.rst

.. include:: ../../step_lwrp/step_lwrp_yum_repository_delete.rst