=====================================================
scm
=====================================================

.. warning:: |note doc_version_11-4|

.. include:: ../../includes_resources/includes_resource_generic.rst

.. include:: ../../includes_resources/includes_resource_scm.rst

This resource is the base resource for two other commonly-used resources: |resource scm_subversion| and |resource scm_git|. While it is possible to use the |resource scm| resource to access content stored in either |git| or |svn|, the recommendation is to use the |resource scm_subversion| resource with |svn| and to use the |resource scm_git| resource with |git|. For more information, see the following topics:

* :doc:`git </resource_git>`
* :doc:`subversion </resource_subversion>`

.. note:: |note scm resource use with resource deploy|

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_scm_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_scm_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_scm_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_scm_providers.rst

Examples
=====================================================
|generic resource statement|

**Get the latest version of an application**

.. include:: ../../step_resource/step_resource_scm_get_latest_version.rst

**Use the git mirror**

.. include:: ../../step_resource/step_resource_scm_use_git_mirror.rst

**Use different branches**

.. include:: ../../step_resource/step_resource_scm_use_different_branches.rst

**Install an application from git using bash**

.. include:: ../../step_resource/step_resource_scm_use_bash_and_ruby_build.rst

**Upgrade packages from git**

.. include:: ../../step_resource/step_resource_scm_upgrade_packages.rst


