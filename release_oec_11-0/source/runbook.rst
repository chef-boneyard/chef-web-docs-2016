.. THIS PAGE DOCUMENTS Enterprise Chef server version 11.0

=====================================================
Runbook
=====================================================

.. include:: ../../includes_chef_server/includes_chef_server.rst

.. include:: ../../includes_chef_server/includes_chef_server_component_erchef_background.rst

The following diagram shows the various components that are part of a |chef server| deployment and how they relate to one another.

.. image:: ../../images_old/server_components_oec.png

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Component
     - Description
   * - Bookshelf
     - .. include:: ../../includes_chef_server/includes_chef_server_component_bookshelf.rst

       All cookbooks are stored in a dedicated repository.
   * - WebUI
     - .. include:: ../../includes_chef_server/includes_chef_server_component_webui.rst
   * - Erchef
     - .. include:: ../../includes_chef_server/includes_chef_server_component_erchef.rst
   * - Message Queues
     - Messages are sent to the Search Index using the following components:
       
          #. .. include:: ../../includes_chef_server/includes_chef_server_component_rabbitmq.rst
          #. .. include:: ../../includes_chef_server/includes_chef_server_component_expander.rst
          #. .. include:: ../../includes_chef_server/includes_chef_server_component_solr.rst

       All messages are added to a dedicated search index repository.
   * - Nginx
     - .. include:: ../../includes_chef_server/includes_chef_server_component_nginx.rst
   * - PostgreSQL
     - .. include:: ../../includes_chef_server/includes_chef_server_component_postgresql.rst

The following sections detail how to monitor the server, manage log files, manage services, manage firewalls and ports, configure SSL, tune server configuration settings, and backup and restore data.

Deployment Scenarios
=====================================================
There are several configuration options for the |chef server oec| server: hosted by |company_name|, all on a single machine (standalone), multiple machines and a scaled front end, multiple machines and a scaled back end, or multiple machines with both scaled front and back ends.

Standalone
-----------------------------------------------------
A standalone deployment is a great way to test out |chef server oec|. All of the components and services are deployed on a single piece of hardware, so the installation is relatively straightforward. For a simple test deployment, use any machine--including a virtual machine--that meets the minimum system requirements.

A standalone deployment can also be more than just a testing deployment. Many organizations use the standalone configuration in production environments. If your organization expects to have only a few hundred nodes and doesn't anticipate the need to scale horizontally or vertically, then this configuration may be the best option. Depending on the hardware on which |chef server oec| is installed, a standalone deployment can easily handle organization sizes well beyond several thousand nodes, so there is room for growth as long as the hardware on which the server is installed can support that growth.

.. image:: ../../images_old/oec_server_deploy_standalone.png

where no additional steps are taken for high availability. In some organizations, this approach is fine. It all depends on the capabilities of the hardware on which the services are installed and what the long-term growth expectations are for the number of nodes that will need to be managed over time. If the need to add any type of high availability arises (be it front end load balancing or back end failover), that type of change would likely come with some disruption while the switch over to new hardware and software reconfiguration takes place.

Scaled Front End
-----------------------------------------------------
A scaled front end deployment is ideal for organizations that know they will need to plan for high availability, but also have internal requirements for back end high availability that are different from the scaled back end scenario. This is fine, of course. |chef server oec| can be configured for back end high availability in many different ways. This scenario recognizes that the back end high availability decisions are your own, but that deploying for front end high availability is also a requirement.

.. image:: ../../images_old/oec_server_deploy_fe.png

where:

* The front end servers handle requests from the |chef client| (where the requests are made by the |chef client| as it configures a node), from workstations (where the request is typically in the form of a |knife| command), and by users who log on to the |chef server| web user interface. Load balancing is typically configured for the front end servers by using a combination of hardware (such as |f5| or |netscalar|), |ssl| off-loading, and a round-robin load balancing algorithm.
* The back end server is shown as a single machine. In some organizations, a single back end machine is fine, but more commonly, this scenario represents an organization that has different requirements from the "asynchronous block level replication of logical volume managers (|drbd|), a shared virtual IP address, and access to the primary server (via the shared virtual IP address) maintained by |keepalived|" approach that is the default scenario described in the documentation for |chef server oec|. If a different approach is needed, please consult with |company_name| support to help ensure that all of the critical configuration requirements are understood.

Scaled Back End
-----------------------------------------------------
A scaled back end deployment is the most common starting point for high availability, with regard to |chef server oec|. It is easier to scale out and load balance the front end servers later, but it's essential to set up the back end servers for primary/secondary failover, system backups, and so on, as part of the initial configuration. Most |chef server oec| customers choose this configuration.

.. image:: ../../images_old/oec_server_deploy_be.png

where:

* The front end server is shown as a single machine. Requests to the front end are done via the |api chef server| and are made by the |chef client|, |knife|, and users (when they log on to the |webui| web user interface). The need for load balancing the front end servers depends on the number of requests that will be made to the |chef server| and on the capabilities of the hardware on which the front end services are installed. In many organizations, a single front end machine is fine and the decision to add a machine (and add load balancing) can be made later and with minimal disruption.
* The back end servers handle data storage and retrieval. Failover is achieved on the back end servers using a combination of `asynchronous block level replication <http://www.drbd.org/users-guide/s-prepare-network.html>`_ of logical volume managers (|drbd|), a shared virtual IP address, and access to the primary server (via the shared virtual IP address) maintained by |keepalived|.

Scaled Front and Back Ends
-----------------------------------------------------
A scaled front and back end deployment is for those organizations that know they need high availability right from the start.

.. image:: ../../images_old/oec_server_deploy_febe.png

where:

* The front end servers handle requests from the |chef client| (where the requests are made by the |chef client| as it configures a node), from workstations (where the request is typically in the form of a |knife| command), and by users who log on to the |chef server| web user interface. Load balancing is typically configured for the front end servers by using a combination of hardware (such as |f5| or |netscalar|), |ssl| off-loading, and a round-robin load balancing algorithm.
* The back end servers handle data storage and retrieval. Failover is achieved on the back end servers using a combination of asynchronous block level replication of logical volume managers (|drbd|), a shared virtual IP address, and access to the primary server (via the shared virtual IP address) maintained by |keepalived|.

Monitoring
=====================================================
.. include:: ../../includes_server_monitor/includes_server_monitor.rst

Application Checks
-----------------------------------------------------
.. include:: ../../includes_server_monitor/includes_server_monitor_application.rst

|drbd|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_monitor/includes_server_monitor_application_drbd.rst

|erlang|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_monitor/includes_server_monitor_application_erlang.rst

|nginx|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_monitor/includes_server_monitor_application_nginx.rst

|postgresql|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_monitor/includes_server_monitor_application_postgresql.rst

|rabbitmq|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_monitor/includes_server_monitor_application_rabbitmq.rst

|redis|
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_monitor/includes_server_monitor_application_redis.rst

System Checks
-----------------------------------------------------
.. include:: ../../includes_server_monitor/includes_server_monitor_system.rst

ha-status
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_ha_status.rst

opscode-authz
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_monitor/includes_server_monitor_system_authz.rst

opscode-erchef
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_monitor/includes_server_monitor_system_erchef.rst

opscode-expander
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_monitor/includes_server_monitor_system_expander.rst

**Search Indexes**

.. include:: ../../includes_search/includes_search.rst

.. include:: ../../includes_server_monitor/includes_server_monitor_system_expander_search.rst

**opscode-expanderctl**

.. include:: ../../includes_ctl_opscode_expander/includes_ctl_opscode_expander.rst

.. include:: ../../includes_ctl_opscode_expander/includes_ctl_opscode_expander_options.rst

.. include:: ../../includes_ctl_opscode_expander/includes_ctl_opscode_expander_example.rst

Nodes, Workstations
-----------------------------------------------------
.. include:: ../../includes_server_monitor/includes_server_monitor_system_client.rst

Disks
-----------------------------------------------------
.. include:: ../../includes_server_monitor/includes_server_monitor_system_disk.rst






Log Files
=====================================================

.. include:: ../../includes_server_logs/includes_server_logs_11.rst

View Log Files
-----------------------------------------------------
.. include:: ../../includes_server_logs/includes_server_logs_11_view.rst

tail Log Files
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_tail.rst

.. include:: ../../step_server_services/step_server_services_general_tail.rst

Supervisor
-----------------------------------------------------
.. include:: ../../includes_server_logs/includes_server_logs_11_type_supervisor.rst

nginx, access
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_logs/includes_server_logs_nginx_log_access.rst

opscode-account
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_logs/includes_server_logs_account_log_current.rst

opscode-erchef, current
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_logs/includes_server_logs_erchef_log_current.rst

opscode-erchef, erchef
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_logs/includes_server_logs_11_erchef_log_erchef.rst

opscode-webui
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_logs/includes_server_logs_webui_log_current.rst

Application
-----------------------------------------------------
.. include:: ../../includes_server_logs/includes_server_logs_type_application.rst

nginx
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_logs/includes_server_logs_nginx.rst

.. include:: ../../step_server_services/step_server_services_nginx_tail.rst

**Read Log Files**

.. include:: ../../includes_server_logs/includes_server_logs_nginx_read_logs.rst







Firewalls and Ports
=====================================================

.. include:: ../../includes_server_firewalls_and_ports/includes_server_firewalls_and_ports.rst

.. include:: ../../includes_server_firewalls_and_ports/includes_server_firewalls_and_ports_listening.rst

Standalone
-----------------------------------------------------
.. include:: ../../includes_server_firewalls_and_ports/includes_server_firewalls_and_ports_standalone.rst

Front End
-----------------------------------------------------
.. include:: ../../includes_server_firewalls_and_ports/includes_server_firewalls_and_ports_fe.rst

Back End
-----------------------------------------------------
.. include:: ../../includes_server_firewalls_and_ports/includes_server_firewalls_and_ports_be.rst






Services
=====================================================
The following subcommands are built into the |private chef ctl| command line tool.

hup
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_hup.rst

int
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_int.rst

kill
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_kill.rst

once
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_once.rst

restart
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_restart.rst

service-list
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_service_list.rst

start
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_start.rst

status
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_status.rst

High Availability
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_status_ha.rst

Log Files
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_status_logs.rst

stop
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_stop.rst

tail
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_tail.rst

term
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_term.rst





SSL Configuration
=====================================================

.. include:: ../../includes_server_security/includes_server_security_ssl.rst

.. warning:: The |fqdn| for the |chef server| should not exceed 64 characters when using |open ssl|. |open ssl| requires the ``CN`` in a certificate to be no longer than 64 characters.

.. warning:: By default, the |chef server| uses the |fqdn| to determine the common name (``CN``). If the |fqdn| of the |chef server| is longer than 64 characters, the ``reconfigure`` command will not fail, but an empty certificate file will be created. |nginx| will not start if a certificate file is empty.

Custom Certificates
-----------------------------------------------------
.. include:: ../../step_server_security/step_server_security_ssl_custom_certificates.rst

Regenerate Certificates
-----------------------------------------------------
.. include:: ../../step_server_security/step_server_security_ssl_regenerate_certificates.rst

|chef client| Settings
-----------------------------------------------------
.. include:: ../../includes_server_security/includes_server_security_ssl_config_settings.rst








Server Tuning
=====================================================

.. include:: ../../includes_server_tuning/includes_server_tuning.rst

.. note:: |note enterprise_chef_tuning|


Customize the Config File
-----------------------------------------------------
.. include:: ../../includes_config/includes_config_rb_chef_server_enterprise.rst

Use Conditions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_config/step_config_add_condition.rst


Recommended Settings
-----------------------------------------------------
.. include:: ../../includes_server_tuning/includes_server_tuning_general.rst

Optional Settings
-----------------------------------------------------
The following settings are often used to for performance tuning of |chef server oec| in larger installations.

.. note:: When changes are made to the |enterprise rb| file the |chef server oec| must be reconfigured by running the ``private-chef-ctl reconfigure`` command.

bookshelf
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_tuning/includes_server_tuning_bookshelf.rst

opscode-account
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_tuning/includes_server_tuning_account.rst

opscode-chef
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_tuning/includes_server_tuning_chef.rst

opscode-erchef
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_tuning/includes_server_tuning_erchef.rst

opscode-expander
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_tuning/includes_server_tuning_expander.rst

opscode-solr
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_tuning/includes_server_tuning_solr.rst

**Update Frequency**

.. include:: ../../includes_server_tuning/includes_server_tuning_solr_update_frequency.rst

opscode-webui
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_tuning/includes_server_tuning_webui.rst

postgresql
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_tuning/includes_server_tuning_postgresql.rst






Backup and Restore
=====================================================
.. include:: ../../includes_server_backup_restore/includes_server_backup_restore.rst

High Availability
-----------------------------------------------------
.. include:: ../../includes_server_backup_restore/includes_server_backup_restore_ha.rst

Required Directories
-----------------------------------------------------
.. include:: ../../includes_server_backup_restore/includes_server_backup_restore_locations.rst

Backup
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_backup_restore/includes_server_backup_restore_locations_backup.rst

Restore
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_backup_restore/includes_server_backup_restore_locations_restore.rst




Troubleshooting
=====================================================
The following sections describe how to troubleshoot some common errors and problems.

401 Unauthorized
-----------------------------------------------------
There are multiple causes of the Chef 401 "Unauthorized" error, so please use the sections below to find the error message that most closely matches your output. If you are unable to find a matching error, or if the provided steps are unhelpful, please `file a help ticket <http://www.opscode.com/support/tickets>`_.

Auth failure as org
+++++++++++++++++++++++++++++++++++++++++++++++++++++
If you're receiving an error like the following it most likely means you'll need to regenerate the |organization pem| file:

.. code-block:: bash

   INFO: Client key /etc/chef/client.pem is not present - registering
   INFO: HTTP Request Returned 401 Unauthorized: Failed to authenticate as ORGANIZATION-validator. Ensure that your node_name and client key are correct.
   FATAL: Stacktrace dumped to c:/chef/cache/chef-stacktrace.out
   FATAL: Net::HTTPServerException: 401 "Unauthorized"

**Troubleshooting Steps**

#. Check if the |organization pem| file exists in one of the following locations::
   
      ~/.chef
      ~/projects/current_project/.chef
      /etc/chef
   
   If one is present, verify that it has the correct read permissions.

#. If there's no |organization pem| file, regenerate it. 
   
   Recreate this file by going to the |webui| web user interface and selecting |webui admin_orgs| in the upper right side of the screen.
   
   You can then select |webui admin_orgs_reset_validation_key| next to the organization for which the key is to be reset.

Auth failure to API
+++++++++++++++++++++++++++++++++++++++++++++++++++++
When the values for certain settings in the |client rb| file---``node_name`` and ``client_key``---are incorrect, it will not be possible to authenticate to the |chef server|. An error similar to the following is shown:

.. code-block:: bash

   ERROR: Failed to authenticate to https://api.opscode.com/organizations/ORGANIZATION as USERNAME with key /path/to/USERNAME.pem
   Response:  Failed to authenticate as USERNAME. Ensure that your node_name and client key are correct.

**Troubleshooting Steps**

* Verify you have the correct values in your |knife rb| file, especially for the ``node_name`` and ``client_key`` settings.

* Check if the file referenced in the ``client_key`` setting (usually |user pem|) exists. Some common locations include::
   
      ~/.chef
      ~/projects/current_project/.chef
      /etc/chef
   
   If one is present, verify that it has the correct read permissions.

* If there's no |client rb| file, regenerate it and ensure the values for the ``node_name`` and ``client_key`` settings are correct.

Org not found 
+++++++++++++++++++++++++++++++++++++++++++++++++++++
If you see this error when trying to recreate the |organization pem|, it's possible that the |chef client| itself was deleted. In this situation, the |organization pem| will need to be recreated. In these directions, ``ORGANIZATION`` should be replaced with the name of your organization.

.. include:: ../../step_manage_webui/step_manage_webui_policy_validation_reset_key.rst

Sync clock on host
+++++++++++++++++++++++++++++++++++++++++++++++++++++
If the system clock drifts more than 15 minutes from the actual time, the following type of error will be shown:

.. code-block:: bash

   INFO: Client key /etc/chef/client.pem is not present - registering
   INFO: HTTP Request Returned 401 Unauthorized: Failed to authenticate as ORGANIZATION-validator. Synchronize the clock on your host.
   FATAL: Stacktrace dumped to /var/chef/cache/chef-stacktrace.out
   FATAL: Net::HTTPServerException: 401 "Unauthorized"

To resolve this error, synchronize the clock with an NTP server.

All other 401 errors
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The general ``Net::HTTPServerException: 401 "Unauthorized"`` error will usually occur for one of two reasons.

**Troubleshooting Steps**

#. Make sure your ``client.pem`` is valid.
   
   This can be fixed by deleting ``client.pem`` in ``/etc/chef`` and deleting the client and node with knife.
   
   On a management station:

   .. code-block:: bash

      # Dump the current node to JSON
      $ knife node show NODE_NAME -fJ > NODE_NAME.json
      
      $ knife client delete FQDN -y
      $ knife node delete FQDN -y

   On an affected node (as root):
   
   .. code-block:: bash
   
      $ rm /etc/chef/client.pem
      $ chef-client
   
   When the |chef client| runs, it will register the API client and generate the correct key.
   
   After successfully running the |chef client| on the node, reload the ``run_list`` and node attributes:
   
   .. code-block:: bash
   
      $ knife node from file NODE_NAME.json

#. Make sure to use the same ``node_name`` as the initial |chef client| run.
   
   This can happen for a number of reasons. For example, if the |client rb| file does not specify the correct node name and the system's hostname has changed.
   
   Running ``chef-client -l debug`` will identify the node name being used by the |chef client| for authentication attempts:
   
   .. code-block:: bash
   
      DEBUG: Signing the request as SOME_NODE_NAME
   
   This can be fixed this by explicitly setting ``node_name`` in the |client rb| file to match the name originally used to register.
   
   .. code-block:: ruby
   
   node_node 'mynode.mycompany.com'
   
   Alternatively, re-register the node using the method described previously.

403 Forbidden
-----------------------------------------------------
If you're seeing output like this:

.. code-block:: bash

   FATAL: Stacktrace dumped to /var/chef/cache/chef-stacktrace.out
   FATAL: Net::HTTPServerException: 403 "Forbidden"

this is an indication that there is an issue with permissions on the |chef server|.

**Troubleshooting Steps**

In |chef|, there are two different types of permissions issues, object specific and global permissions. To figure out which type of permission issue you're experiencing, run the |chef client| again using the ``-l debug`` options to see debugging output.

You should see something like this up the stack trace:

.. code-block:: bash

   DEBUG: Sending HTTP Request to https://api.opscode.com/organizations/ORGNAME/nodes
   ERROR: Running exception handlers

The URL will help identify the type of permission issue. If the URL is an index action (i.e. operating on a collection of resources, like ``/nodes``) then this is a global permission. If the URL is operating on an instance of a collection (i.e. ``/nodes/NODENAME``) then this is an object permission issue.

To fix the global permissions:

#. Log in to the |webui| and click on the failing object type (most likely |webui nodes|).

#. Click on the |webui tab_permissions| sub-tab. Which permission it needs, depends on which request that failed::

      GET - Under the group section, make sure it has the LIST permission checked
      POST - Under the group section, make sure it has the CREATE permission checked

#. Check the checkboxes needed and save the updates.

To fix object permissions:

#. Log in to the |webui| and click on the failing object type (most likely |webui nodes|).

#. Click on the object in the list that is causing the error.

#. Click on the |webui tab_permissions| sub-tab. Which permission it needs, depends on the type of request that failed::

      GET - Make sure it has the READ permission checked
      PUT - Make sure it has the UPDATE permission checked
      DELETE - Make sure it has the DELETE permission checked

#. Check the checkboxes needed and save the updates.

500 (Unexpected)
-----------------------------------------------------
HTTP 500 is a non-speciﬁc error message. The full error message for the error the |chef client| is receiving can be found in one of the following log ﬁles:

* ``/var/log/opscode/opscode-account/current`` 
* ``/var/log/opscode/opscode-erchef/current``

The error will likely found in a stacktrace from the application error. In some cases the error message will clearly indicate a problem with another service which can be investigated further. For non-obvious errors, please contact |company_name| and attach the log files.

502 / 504 (Gateway)
-----------------------------------------------------
.. see: includes_server_monitor_application_nginx

Determine which API service is returning 504s using the |nginx| access logs. API requests returning 504 can be found with the following command on a frontend:

.. code-block:: bash

   $ grep ’HTTP/1.1" 504’ /var/log/opscode/nginx/access.log

The following will extract the URLs and sort them by ``uniq`` count:

.. code-block:: bash

   $ grep ’HTTP/1.1" 504’ nginx-access.log | cut -d’ ’ -f8 | sort | uniq -c | sort

In a large installation, you may need to restrict this to a subset of the requests:

.. code-block:: bash

   $ tail -10000 nginx-access.log | grep ’HTTP/1.1" 504’ | cut -d’ ’ -f8 | sort | uniq -c | sort

You can also use the ``ntail`` utility.

If the problematic service is a |ruby|-based service and the frontend machines have free RAM or CPU, consider increasing the number of worker processes. If the problematic service is |service erchef|, use the request log to determine whether a particular component of requests is slow.

Workflow Problems
-----------------------------------------------------
In working with |chef|, you'll most likely encounter issues in your regular workflow. This page is a collection of common errors our users have reported while working with |chef|. Please use the accordion below to select the error message that most closely matches your output. If you are unable to find a matching error, or if the provided steps are unhelpful, please `file a help ticket <http://www.opscode.com/support/tickets>`_.

Missing file or directory
+++++++++++++++++++++++++++++++++++++++++++++++++++++
If you're seeing an error like:

.. code-block:: bash

   Client key /etc/chef/client.pem is notresent - registering
   WARN: Failed to read the private key /etc/che/validation.pem: #<Errno::ENOENT: No such file or directory - /etc/chef/validaton.pem>
   FATAL: Stacktrace dumped to /etc/chef/cache/chef-stacktrace.out
   FATAL: Chef::Exceptions::PrivateKeyMissing: I cannot read /etc/chef/validation.pem, which you told me to use to sign requests

it means that the |chef client| could not find your validation.pem.

**Troubleshooting Steps**

#. Make sure your ``validation.pem`` or ``ORGANIZATION-validator.pem`` is downloaded and accessible by the current user.

#. Make sure your |client rb| points to the location of your validator pem.

Uncommitted cookbook changes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
This isn't really an error, but can be confusing to new users. When you try to install a cookbook with changes that have not been committed to git you will get this error:

.. code-block:: bash

   Installing getting-started to /home/jes/chef-repo/.chef/../cookbooks
   ERROR: You have uncommitted changes to your cookbook repo:
    M cookbooks/getting-started/recipes/default.rb
    ?? .chef/
    ?? log
   Commit or stash your changes before importing cookbooks

**Troubleshooting Steps**

Solve this by committing the cookbook changes. For example, the following command would commit all new changes with the message "updates".

.. code-block:: bash

   $ git commit -am "Updating so I can install a site cookbook"

Re-run the ``knife cookbook site install`` command again to install the community cookbook.

Missing config file
+++++++++++++++++++++++++++++++++++++++++++++++++++++
If you're seeing an error like:

.. code-block:: bash

   WARN: *****************************************
   WARN: Can not find config file: /etc/chef/client.rb, using defaults.
   WARN: No such file or directory - /etc/chef/client.rb
   # ... output truncated ... #
   FATAL: Chef::Exceptions::PrivateKeyMissing: I cannot read /etc/chef/validation.pem, which you told me to use to sign requests!

**Troubleshooting Steps**

Work around this issue by supplying the full path to the |client rb| file:

.. code-block:: bash

   $ chef-client -c /etc/chef/client.rb

