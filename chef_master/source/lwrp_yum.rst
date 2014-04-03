=====================================================
yum Lightweight Resources
=====================================================

|cookbook name yum|

The |cookbook yum| cookbook contains the following resources: ``yum_globalconfig`` and ``yum_repository``.

.. warning:: The |cookbook yum| cookbook, version 3.0.0 (and above) contains breaking changes that are not compatible with previous versions. The |lwrp yum repository| resource is changed, the |lwrp yum globalconfig| resource is new, and the **yum_key** resource is deprecated. Recipes have been moved into repository-specific cookbooks. If your organization is using an older version of the |cookbook name yum| cookbook, lock |yum| to that cookbook version until all of the cookbooks that may have a dependency on |yum| are updated to work with the newest version of this cookbook.

Repository Cookbooks
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_yum_repos.rst

yum_globalconfig
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_yum_globalconfig.rst

.. note:: This resource is part of the |cookbook yum| cookbook: https://github.com/opscode-cookbooks/yum.

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_yum_globalconfig_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_yum_globalconfig_attributes.rst

Examples
-----------------------------------------------------
The following examples show how to use the ``yum_globalconfig`` resource:

**Render template with global configuration parameters**

.. include:: ../../step_lwrp/step_lwrp_yum_globalconfig_add.rst


yum_repository
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_yum_repository.rst

.. note:: This resource is part of the |cookbook yum| cookbook: https://github.com/opscode-cookbooks/yum.

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_yum_repository_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_yum_repository_attributes.rst

Examples
-----------------------------------------------------
The following examples show how to use the ``yum_repository`` resource:

**Create a repository**

.. include:: ../../step_lwrp/step_lwrp_yum_repository_add.rst

**Delete a repository**

.. include:: ../../step_lwrp/step_lwrp_yum_repository_delete.rst