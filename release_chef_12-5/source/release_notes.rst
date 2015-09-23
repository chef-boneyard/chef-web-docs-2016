=====================================================
Release Notes: |chef client| 12.5
=====================================================

.. include:: ../../includes_chef/includes_chef.rst

What's New
=====================================================
The following items are new for |chef client| 12.5 and/or are changes from previous versions. The short version:

* **Rename "resource attributes" to "resource properties"** One of the outcomes of `RFC-054 <https://github.com/chef/chef-rfc/blob/master/rfc054-resource-attribute-improvements.md>`__ is that |company_name| will be more clear about what a node attribute is versus a resource property. In previous releases of |chef|, resource properties are referred to as attributes. Starting with |chef client| 12.5 release---and retroactively updated for all previous releases of the docs---"resource attributes" are now referred to as "resource properties" and the word "attribute" now refers specifically to "node attributes". This is a semantic change in the docs that makes it more clear for everyone---they should have been called "resource properties" originally---but otherwise does not change any workflows or break anything.
* **New way to build custom resources** The process for extending the collection of resources that are built into |chef| has been simplified. It is defined only in the ``/resources`` directory using a simplified syntax that easily leverages the built-in collection of resources.
* **Use custom resources instead of providers and definitions** The new way of defining custom resource changes the ways that providers and definitions are used with |chef|. Defining a provider (in the ``/providers`` directory) is no longer necessary. The typical purpose of a definition (in the ``/definitions`` directory) is to create a reusable component that can be leveraged by recipes across any number of cookbooks: use a custom resource instead of a definition and :doc:` migrate existing definitions to be custom resources </definitions>`.
* **The terms LWRP and HWRP are deprecated** The new way to refer to creating a custom resource is "custom resource" and the acronyms LWRP ("lightweight resource provider") and HWRP ("heavyweight resource provider") are deprecated. They are older, legacy terms that refer to specific ways of building custom resources. The current version of |chef| supports the older lightweight/heavyweight approaches, but adds additional ways of building custom resources.
* **ps_credential helper to embed usernames and passwords** Use the ``ps_credential`` helper to embed a ``PSCredential`` object---security credentials, such as a user name or password---in a script defined by the |resource dsc_script| resource.
* **The -j / --json-attributes option may be used to specify environments** The ``--json-attributes`` option for the |chef client| may now be used to specify a |json| file that contains environment data.
* **Warning added to the ``verify`` property examples** The behavior of the property expects ``file``, but should have expected ``path``. For versions of the |chef client| prior to 12.5, use ``file``; starting with |chef client| 12.5, use ``path``. This change is documented as a warning across all versions in any topic in which the ``version`` attribute is documented.
* **depth property added to deploy resource** The ``depth`` property allows the depth of a |git| repository to be truncated to the specified number of versions.
* **The knife ssl check subcommand supports SNI*** Support for Server Name Indication (SNI) is added to the |subcommand knife ssl_check| subcommand.
* **Specify a policy revision** A policy revision is based on the name of a policy group and the name of a policy and may be specified in the |client rb| file or via a |json| file and the command line.

.. https://github.com/chef/chef/pull/3776#issuecomment-135525399


Custom Resources
-----------------------------------------------------
.. include:: ../../includes_custom_resources/includes_custom_resources.rst

.. note:: See https://docs.chef.io/custom_resources.html for more information about custom resources, including a scenario that shows how to build a ``website`` resource. Read this scenario as an HTML presentation at https://docs.chef.io/decks/custom_resources.html.

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_custom_resources/includes_custom_resources_syntax.rst

.. include:: ../../includes_custom_resources/includes_custom_resources_syntax_example.rst


Definition vs. Resource
-----------------------------------------------------
.. include:: ../../includes_definition/includes_definition_example.rst

As a Definition
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_definition/includes_definition_example_as_definition.rst

As a Resource
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_definition/includes_definition_example_as_resource.rst

Common Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_definition/includes_definition_example_as_resource_with_common_properties.rst

Event Dispatch
-----------------------------------------------------

.. see: https://github.com/chef/chef/pull/3242

Handlers now support an event handler that passes a user-defined block against an event that occurs during the |chef client| run.

Syntax:

.. code-block:: ruby

   Chef.event_handler do
     on :event_type do |exception|
       # ... hipchat_notify exception.message
     end
   end

where

* ``:event_type`` is a valid exception event type: ``run_failed``, ``registration_failed``, ``node_load_failed``, ``run_list_expand_failed``, ``cookbook_resolution_failed``, ``cookbook_sync_failed``, ``library_file_load_failed``, ``lwrp_file_load_failed``, ``attribute_file_load_failed``, ``definition_file_load_failed``, ``recipe_file_load_failed``, ``recipe_not_found``, ``converge_failed``, or ``resource_failed``, ``provider_requirement_failed``, ``audit_phase_failed``
* ``# ...`` is arbitrary |ruby| code that tells the |chef client| how to process the message, should the event occur

``ps_credential`` Helper
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_dsc_script_helper_ps_credential.rst

``-json-attributes``, Environments
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_client/includes_ctl_chef_client_environment.rst

|resource deploy| Property
-----------------------------------------------------
The following property is new for the |resource deploy| resource:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Property
     - Description
   * - ``depth``
     - **Ruby Type:** Integer

       |depth git_truncated|

Specify Policy Revision
-----------------------------------------------------
Use the following command to specify a policy revision:

.. code-block:: bash

   $ chef client -j JSON

where the |json| file is similar to:

.. code-block:: javascript

   {
     "policy_name": "appserver",
     "policy_group": "staging"
   }

Or use the following settings to specify a policy revision in the |client rb| file:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``policy_group``
     - |name policy_name|
   * - ``policy_name``
     - |name policy_group|



Changelog
=====================================================
https://github.com/chef/chef/blob/master/CHANGELOG.md
