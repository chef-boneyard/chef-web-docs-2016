=====================================================
Release Notes: |chef client| 12.5
=====================================================

.. include:: ../../includes_chef/includes_chef.rst

What's New
=====================================================
The following items are new for |chef client| 12.5 and/or are changes from previous versions.

* **New way to build custom resources** The process for extending the collection of resources that are built into |chef| has been simplified. Custom resources are now defined only in the ``/resources`` directory (without a corresponding file in the ``/providers`` directory) using a simplified syntax that easily leverages the built-in collection of resources. Custom resources are no longer referred to with the acronyms LWRP ("lightweight resource provider") and HWRP ("heavyweight resource provider").
* **"resource attributes" are now known as "resource properties"** In previous releases of |chef|, resource properties are referred to as attributes, but this is confusing for users because nodes also have attributes. Starting with |chef client| 12.5 release---and retroactively updated for all previous releases of the docs---"resource attributes" are now referred to as "resource properties" and the word "attribute" now refers specifically to "node attributes". 
* **ps_credential helper to embed usernames and passwords** Use the ``ps_credential`` helper on Windows to create a ``PSCredential`` object---security credentials, such as a user name or password---that can be used in, for example, the |resource dsc_script| or |resource powershell| resources.
* **The -j / --json-attributes option may be used to specify environments** The |json| file used by the ``--json-attributes`` option for the |chef client| may now contain the name of the environment the node should be in.
* **Warning added to the ``verify`` property examples** The behavior of the property expects ``file``, but should have expected ``path``. For versions of the |chef client| prior to 12.5, use ``file``; starting with |chef client| 12.5, use ``path``. This change is documented as a warning across all versions in any topic in which the ``version`` attribute is documented.
* **depth property added to deploy resource** The ``depth`` property allows the depth of a |git| repository to be truncated to the specified number of versions.
* **The knife ssl check subcommand supports SNI** Support for Server Name Indication (SNI) is added to the |subcommand knife ssl_check| subcommand.
* **Chef Policy group and name can now be part of the node object** Chef Policy is a beta feature of the |chef client| that will eventually replace roles, environments or manually specifying the run_list. Policy group and name can now be stored as part of the node object rather than in the |client rb| file. A recent version of the |chef server|, such as 12.2.0 or better, is needed to fully utilize this feature.

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
