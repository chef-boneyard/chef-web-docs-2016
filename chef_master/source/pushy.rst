=====================================================
Pushy
=====================================================

.. warning:: DRAFT

.. include:: ../../includes_pushy/includes_pushy.rst

Components
=====================================================
.. include:: ../../includes_pushy/includes_pushy_components.rst

.. include:: ../../includes_pushy/includes_pushy_components_diagram.rst

|pushy| Server
-----------------------------------------------------
The |pushy| server is used to xxxxx.

|pushy| Client
-----------------------------------------------------
The |pushy| server is used to xxxxx.

Workstations
-----------------------------------------------------
A workstation is used to manage |pushy| jobs, including maintaining the |cookbook pushjobs| cookbook, using |knife| to start and stop jobs and to manage job lists.

push-jobs Cookbook
-----------------------------------------------------
The |cookbook pushjobs| cookbook is used by |pushy| to install the |pushy| client on managed nodes, and then set up the |pushy| client to run as a service. In addition, |pushy| relies on a cookbook attribute to manage the whitelist, which is a list of jobs (and commands) that are available to |pushy|.

Whitelist
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_pushy/includes_pushy_whitelist.rst

Messages
=====================================================
|pushy| sends two types of messages: heartbeat and job.

Heartbeat Messages
-----------------------------------------------------
.. include:: ../../includes_pushy/includes_pushy_components_heartbeat.rst

Job Messages
-----------------------------------------------------
.. include:: ../../includes_pushy/includes_pushy_components_command.rst

Reference
=====================================================
The following sections describe the |knife| subcommands, the |api pushy|, and configuration settings used by |pushy|.

.. warning:: WILL INCLUDE THESE WHEN FINISHED.

knife-pushy
-----------------------------------------------------
http://docs.opscode.com/plugin_knife_pushy.html

Pushy API
-----------------------------------------------------
http://docs.opscode.com/api_pushy.html

ctl-pushy-client
-----------------------------------------------------
http://docs.opscode.com/ctl_pushy_client.html

pushy-server.rb
-----------------------------------------------------
http://docs.opscode.com/config_rb_pushy_server.html