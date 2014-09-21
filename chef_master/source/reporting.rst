=====================================================
|reporting_title|
=====================================================

.. include:: ../../includes_reporting/includes_reporting.rst

Requirements
=====================================================
.. include:: ../../includes_system_requirements/includes_system_requirements_reporting.rst

|reporting| is configured as :doc:`a premium feature </install_reporting>` of the |chef server|.

The Reporting Run
=====================================================
.. include:: ../../includes_reporting/includes_reporting_run.rst

|chef manage_title|, Reports
=====================================================
.. include:: ../../includes_manage/includes_manage.rst

When |reporting| and |chef manage| are both added to the |chef server|, a user interface for |reporting| is also available.

.. image:: ../../images/step_manage_webui_reports.png

|knife_title| Reporting
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_reporting.rst

.. note:: Review the list of `common options <http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

Install the Plugin
-----------------------------------------------------
.. include:: ../../step_plugin_knife/step_plugin_knife_reporting_install_rubygem.rst

runs list
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_reporting_runs_list.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_reporting_runs_list_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_reporting_runs_list_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
**View all chef-client runs for an organization**

.. include:: ../../step_plugin_knife/step_plugin_knife_reporting_runs_list_by_organization.rst

**View all chef-client runs for a single node**

.. include:: ../../step_plugin_knife/step_plugin_knife_reporting_runs_list_by_node.rst

**View a specific chef-client run**

.. include:: ../../step_plugin_knife/step_plugin_knife_reporting_runs_list_by_run_id.rst

runs show
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_reporting_runs_show.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_reporting_runs_show_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_reporting_runs_show_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
**Show runs by run identifier**

.. include:: ../../step_plugin_knife/step_plugin_knife_reporting_runs_show_by_run_id.rst

``state_attrs`` Method
=====================================================
.. include:: ../../includes_dsl_resource/includes_dsl_resource_method_state_attrs.rst

Configuration Settings
=====================================================
|reporting| relies on two settings in the |client rb| file:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``enable_reporting``
     - |enable reporting| For example:
       ::
 
          enable_reporting true
   * - ``enable_reporting_url_fatals``
     - |enable reporting_url_fatals| For example:
       ::
 
          enable_reporting_url_fatals false
