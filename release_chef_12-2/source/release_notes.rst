=====================================================
Release Notes: |chef client| 12.2
=====================================================

.. include:: ../../includes_chef/includes_chef.rst

.. warning:: This is a placeholder for an upcoming release of the |chef client|.

What's New
=====================================================
The following items are new for |chef client| 12.2 and/or are changes from previous versions. The short version:

* **chef-client may be run in audit-mode** Use |chef client_audit| to run audit tests against a node.
* **control method added to Recipe DSL** Use the ``control`` method to define specific audits that match directories, files, packages, ports, and services.
* **control_group method added to Recipe DSL** Use the ``control_group`` method to group multiple ``control`` methods into a single audit.

control
-----------------------------------------------------
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_control.rst

directory Matcher
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_control_matcher_directory.rst

file Matcher
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_control_matcher_file.rst

package Matcher
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_control_matcher_package.rst

port Matcher
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_control_matcher_port.rst

service Matcher
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_control_matcher_service.rst

control_group
-----------------------------------------------------
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_control_group.rst

|chef client| Options
-----------------------------------------------------
The following options are added to the |chef client| executable:

``--audit-mode MODE``
   |audit_mode| Default value: ``disabled``.

Changelog
=====================================================
xxxxx

