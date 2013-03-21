=====================================================
scm
=====================================================

A `resource <http://docs.opscode.com/resource.html>`_ is a key part of a `recipe <http://docs.opscode.com/essentials_cookbook_recipes.html>`_ that defines the actions that can be taken against a piece of the system. These actions are identified during each `Chef run <http://docs.opscode.com/essentials_nodes_chef_run.html>`_ as the resource collection is compiled. Once identified, each resource (in turn) is mapped to a provider, which then configures each piece of the system.

.. include:: ../../includes_resources/includes_resource_scm.rst

This resource is the base resource for two other commonly-used resources: |resource scm subversion| and |resource scm git|. While it is possible to use the |resource scm| resource to access content stored in either |github| or |svn|, the recommendation is to use the |resource scm subversion| resource with |svn| and to use the |resource scm git| resource with |git|. For more information, see the following topics:

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

**Install an application from github using bash**

.. include:: ../../step_resource/step_resource_scm_use_bash_and_ruby_build.rst

**Upgrade packages from github**

.. include:: ../../step_resource/step_resource_scm_upgrade_packages.rst