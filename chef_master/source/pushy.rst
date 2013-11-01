=====================================================
|pushy|
=====================================================

.. include:: ../../includes_pushy/includes_pushy.rst

.. note:: |pushy| does not work with hosted |chef server oec|.

:doc:`Install Push Jobs </install_pushy>` using the ``push-jobs`` cookbook and a |chef client| run on each of the target nodes.

Requirements
=====================================================
.. include:: ../../includes_pushy/includes_pushy_requirements.rst

.. warning:: |pushy| is only available when running |chef server oec| version 11.0.1 (or higher). (If |chef server oec| version 11.0.0 was installed on new machines that were not upgraded from an earlier version of |chef private|, these machines must be upgraded to |chef server oec| version 11.0.1 using the same steps as the :doc:`high availability </upgrade_server_ha>` or :doc:`standalone </upgrade_server_standalone>` configurations, but using the ``private-chef-ctl reconfigure`` command in place of all instances of the ``private-chef-ctl upgrade`` command.)

Components
=====================================================
.. include:: ../../includes_pushy/includes_pushy_component.rst

The following diagram shows the various components of |pushy|:

.. image:: ../../images/overview_pushy_states.png


Jobs
-----------------------------------------------------
.. include:: ../../includes_pushy/includes_pushy_component_jobs.rst

Nodes
-----------------------------------------------------
.. include:: ../../includes_pushy/includes_pushy_component_nodes.rst

Workstations
-----------------------------------------------------
.. include:: ../../includes_pushy/includes_pushy_component_workstations.rst


push-jobs Cookbook
=====================================================
The |cookbook pushjobs| cookbook is used by |pushy| to install the |pushy| client on managed nodes, and then set up the |pushy| client to run as a service. In addition, |pushy| relies on a cookbook attribute to manage the whitelist, which is a list of jobs (and commands) that are available to |pushy|.

Whitelist
-----------------------------------------------------
.. include:: ../../includes_pushy/includes_pushy_whitelist.rst

.. 
.. Commented out, probably move to new file(s)
.. 
.. Messages
.. =====================================================
.. Pushy sends two types of messages: heartbeat and job.
.. 
.. Heartbeat Messages
.. -----------------------------------------------------
.. .. include:: ../../includes_pushy/includes_pushy_messages_heartbeat.rst
.. 
.. Job Messages
.. -----------------------------------------------------
.. .. include:: ../../includes_pushy/includes_pushy_messages_jobs.rst

Reference
=====================================================
The following sections describe the |knife| subcommands, the |api pushy|, and configuration settings used by |pushy|.


knife-pushy
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_pushy.rst

.. note:: Review the list of `common options <http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

Install this plugin
-----------------------------------------------------
.. include:: ../../step_plugin_knife/step_plugin_knife_pushy_install_rubygem.rst

job list
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_pushy_job_list.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_pushy_job_list_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|no_options|

job start
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_pushy_job_start.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_pushy_job_start_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_pushy_job_start_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
**Run a job**

.. include:: ../../step_plugin_knife/step_plugin_knife_pushy_job_start_run_job.rst

**Run a job using quorum percentage**

.. include:: ../../step_plugin_knife/step_plugin_knife_pushy_job_start_search_by_quorum.rst

**Run a job using node names**

.. include:: ../../step_plugin_knife/step_plugin_knife_pushy_job_start_search_by_nodes.rst

job status
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_pushy_job_status.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_pushy_job_status_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|no_options|

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
**View job status by job identifier**

.. include:: ../../step_plugin_knife/step_plugin_knife_pushy_job_status_by_id.rst

node status
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_pushy_node_status.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_pushy_node_status_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|no_options|



Pushy API
=====================================================
.. include:: ../../includes_api_pushy/includes_api_pushy.rst

.. include:: ../../includes_api_pushy/includes_api_pushy_endpoint.rst

connect/NODE_NAME
-----------------------------------------------------
.. include:: ../../includes_api_pushy/includes_api_pushy_endpoint_node_name.rst

GET
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_api_pushy/includes_api_pushy_endpoint_node_name_get.rst

jobs
-----------------------------------------------------
.. include:: ../../includes_api_pushy/includes_api_pushy_endpoint_jobs.rst

GET
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_api_pushy/includes_api_pushy_endpoint_jobs_get.rst

POST
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_api_pushy/includes_api_pushy_endpoint_jobs_post.rst

jobs/ID
-----------------------------------------------------
.. include:: ../../includes_api_pushy/includes_api_pushy_endpoint_jobs_id.rst

GET
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_api_pushy/includes_api_pushy_endpoint_jobs_id_get.rst

node_states
-----------------------------------------------------
.. include:: ../../includes_api_pushy/includes_api_pushy_endpoint_node_states.rst

GET
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_api_pushy/includes_api_pushy_endpoint_node_states_get.rst

node_states/NODE_NAME
-----------------------------------------------------
.. include:: ../../includes_api_pushy/includes_api_pushy_endpoint_node_name.rst

GET
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_api_pushy/includes_api_pushy_endpoint_node_name_get.rst



ctl-pushy-client
=====================================================
.. include:: ../../includes_pushy/includes_pushy.rst

.. include:: ../../includes_ctl_pushy_client/includes_ctl_pushy_client.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_pushy_client/includes_ctl_pushy_client_options.rst



pushy-server.rb
=====================================================
.. include:: ../../includes_config/includes_config_rb_pushy_server.rst

Settings
-----------------------------------------------------
.. include:: ../../includes_config/includes_config_rb_pushy_server_settings.rst