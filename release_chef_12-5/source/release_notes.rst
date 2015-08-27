=====================================================
Release Notes: |chef client| 12.5
=====================================================

.. include:: ../../includes_chef/includes_chef.rst

What's New
=====================================================
The following items are new for |chef client| 12.5 and/or are changes from previous versions. The short version:

* **Rename "resource attributes" to "resource properties"** One of the outcomes of `RFC-054 <https://github.com/chef/chef-rfc/blob/master/rfc054-resource-attribute-improvements.md>`__ is that |company_name| will be more clear about what a node attribute is versus a resource property. In previous releases of |chef|, resource properties are referred to as attributes. Starting with |chef client| 12.5 (and retroactively updated for all previous releases of the docs), "resource attributes" will now be referred to as "resource properties". This is a semantic change in the docs that makes it more clear for everyone---they should have been called "resource properties" originally---but otherwise does not change any workflows or break anything.
* **ps_credential helper to embed usernames and passwords** Use the ``ps_credential`` helper to embed a ``PSCredential`` object---security credentials, such as a user name or password---in a script defined by the |resource dsc_script| resource.
* **The terms LWRP and HWRP are deprecated** The new way to refer to creating a custom resource is "custom resource" and the acronymns LWRP ("lightweight resource provider") and HWRP ("heavyweight resource provider") are deprecated. They are older, legacy terms that refer to specific ways of building custom resources. The current version of |chef| supports the older lightweight/heavyweight approaches, but adds additional ways of building custom resources.

``ps_credential`` Helper
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_dsc_script_helper_ps_credential.rst

Custom Resources
-----------------------------------------------------
The |chef client| 12.5 release includes a new way of creating custom resources.

Changelog
=====================================================
https://github.com/chef/chef/blob/master/CHANGELOG.md
