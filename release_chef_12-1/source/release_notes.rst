=====================================================
Release Notes: |chef client| 12.1
=====================================================

.. include:: ../../includes_chef/includes_chef.rst

.. warning:: This is a placeholder for an upcoming release of the |chef client|.

What's New
=====================================================
The following items are new for |chef client| 12.1 and/or are changes from previous versions. The short version:

* **chef-client may be run in audit-mode** Use |chef client_audit| to run audit tests against a node.
* **control method added to Recipe DSL** Use the ``control`` method to define specific tests that match directories, files, packages, ports, and services. A ``control`` method must be contained within a ``control_group`` block.
* **control_group method added to Recipe DSL** Use the ``control_group`` method to group one (or more) ``control`` methods into a single audit.
* **New imports attribute for dsc_script resource** Use the ``imports`` attribute to import |windows powershell_dsc_short| resources from modules.
* **New openbsd_package resource** Use the |resource package_openbsd| resource to install packages on the |open bsd| platform.
* **New verify attribute for cookbook_file, file, remote_file, and template resources** Use the ``verify`` attribute to test a file using a block of code or a string.
* **New options for knife-bootstrap** Use the ``--bootstrap-vault-file``, ``--bootstrap-vault-item``, and ``--bootstrap-vault-json`` options with ``knife bootstrap`` to specify items that are stored in |chef vault|.

|chef client|, |chef client_audit|
-----------------------------------------------------
.. include:: ../../includes_chef_client/includes_chef_client_audit_mode.rst

Use following option to run the |chef client| in |chef client_audit| mode:

``--audit-mode MODE``
   |audit_mode| Default value: ``disabled``.

The Audit Run
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_chef_client/includes_chef_client_audit_mode_run.rst

``control``
-----------------------------------------------------
.. include:: ../../includes_analytics/includes_analytics_controls.rst

.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_control.rst

.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_control_syntax.rst

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

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**A package is installed**

.. include:: ../../step_dsl_recipe/step_dsl_recipe_control_matcher_package_installed.rst

**A package version is installed**

.. include:: ../../step_dsl_recipe/step_dsl_recipe_control_matcher_package_installed_version.rst

**A package is not installed**

.. include:: ../../step_dsl_recipe/step_dsl_recipe_control_matcher_package_not_installed.rst

**A service is enabled**

.. include:: ../../step_dsl_recipe/step_dsl_recipe_control_matcher_service_enabled.rst

**A configuration file contains specific settings**

.. include:: ../../step_dsl_recipe/step_dsl_recipe_control_matcher_file_sshd_configuration.rst

**A file contains desired permissions and contents**

.. include:: ../../step_dsl_recipe/step_dsl_recipe_control_matcher_file_permissions.rst

``control_group``
-----------------------------------------------------
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_control_group.rst

.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_control_group_syntax.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**control_group block with multiple control blocks**

.. include:: ../../step_dsl_recipe/step_dsl_recipe_control_group_many_controls.rst

**Duplicate control_group names**

.. include:: ../../step_dsl_recipe/step_dsl_recipe_control_group_duplicate_names.rst

New Attributes
-----------------------------------------------------
The following attributes are new for |chef client| 12.1.

``imports`` Attribute
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following attribute is new for the |resource dsc_script| resource:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``imports``
     - Use to import |windows powershell_dsc_short| resources from a module. To import all resources from a module, specify only the module name:

       .. code-block:: ruby

          imports module_name

       To import specific resources, specify the module name and then the name for each resource in that module to import:

       .. code-block:: ruby

          imports module_name, resource_name_a, resource_name_b, ...

       For example, to import all resources from a module named ``cRDPEnabled``:

       .. code-block:: ruby

          imports cRDPEnabled

       And to import only the ``PSHOrg_cRDPEnabled`` resource:

       .. code-block:: ruby

          imports "cRDPEnabled", "PSHOrg_cRDPEnabled"


``verify`` Attribute
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The ``verify`` attribute may be used with the |resource cookbook_file|, |resource file|, |resource remote_file|, and |resource template| resources.

Use the ``verify`` attribute to specify a block or a string that returns ``true`` or ``false``. A string, when ``true`` is executed as a system command. For example:

.. code-block:: ruby

   template "/etc/nginx.conf" do
     verify "nginx -t -c %{path}"
   end

A block is arbitrary |ruby| defined within the resource block by using the keyword ``verify``. When a block is ``true``, the |chef client| will continue to update the file as appropriate. For example:

.. code-block:: ruby

   template "/tmp/baz" do
     verify { 1 == 1 }
   end

or:

.. code-block:: ruby

   template "/tmp/bar" do
     verify { 1 == 1}
   end

or:

.. code-block:: ruby

   template "/tmp/foo" do
     verify do |path|
       true
     end
   end

should all return ``true``. Whereas, the following should return ``false``:

.. code-block:: ruby

   template "/tmp/turtle" do
     verify "/usr/bin/false"
   end

If a string or a block return ``false``, the |chef client| run will stop and an error will be returned.


``knife bootstrap`` Options
-----------------------------------------------------
Use the following options to specify items that are stored in |chef vault|:

``--bootstrap-vault-file VAULT_FILE``
   |bootstrap valut_file|

``--bootstrap-vault-item VAULT_ITEM``
   |bootstrap valut_item|

``--bootstrap-vault-json VAULT_JSON``
   |bootstrap valut_json|



openbsd_package
-----------------------------------------------------

.. include:: ../../includes_resources_common/includes_resources_common_generic.rst

.. include:: ../../includes_resources/includes_resource_package_openbsd.rst

.. note:: |note resource_based_on_package|

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_openbsd_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_openbsd_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_openbsd_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Install a package**

.. include:: ../../step_resource/step_resource_openbsd_package_install.rst



Changelog
=====================================================
xxxxx

