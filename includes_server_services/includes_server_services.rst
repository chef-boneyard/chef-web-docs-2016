.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|chef server oec| has a built in process supervisor, which ensures that all of the required services are in the appropriate state at any given time. The supervisor starts two processes per service.

The following commands are available for managing services that are used by |chef server oec|:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Command
     - Description
   * - ``service-list``
     - Use this command to display a list of all services available to |chef server oec|. A service that is enabled is labeled with an asterisk (*).
   * - ``status``
     - Use this command to show the status of all services available |chef server oec|. The results will vary based on the configuration of a given server. This command can also be run for an individual service by specifying the name of the service in the command. For example:

       .. code-block:: bash
          
          $ private-chef-ctl status name_of_service

       where ``name_of_service`` represents the name of any service that is listed after running the ``private-chef-ctl service-list`` command.
   * - ``ha-status``
     - Use this command to check the status for services running in a |ha| topology. This command will verify the following:

       * The |keepalived| daemon is enabled in the config
       * The |drbd| process is enabled in the config
       * The underlying block device or logical volume for |drbd| has been created and configured
       * The |drbd| device exists
       * The current state of the server is ``master`` or ``backup``; any migration processes have completed
       * The failover virtual IP address is correctly attached to only the ``master`` node
       * The |drbd| state is correct based on the state of the server being ``master`` or ``backup``
       * The |drbd| mount point is correctly mounted to only the ``master`` node
       * The |drbd| replication IP addresses are pingable
       * The ``runit`` status of the services are correct (up or down) based on the ``master`` or ``backup`` state of the server

       If this command succeeds, it will print display the following:

       .. code-block:: bash
       
          [OK] all checks passed.

       Otherwise it will print out a list of errors:

       .. code-block:: bash

          ...
          [OK] nginx is running correctly, and I am master.
          [ERROR] nrpe is not running.
          [OK] opscode-account is running correctly, and I am master.
          ...
          
          [ERROR] ERRORS WERE DETECTED.
   * - ``start``
     - Use this command to start all services that are enabled in |chef server oec|. This command can also be run for an individual service by specifying the name of the service in the command. For example:

       .. code-block:: bash
          
          $ private-chef-ctl start name_of_service

       where ``name_of_service`` represents the name of any service that is listed after running the ``private-chef-ctl service-list`` command.

       The |chef server oec| supervisor is configured to wait seven seconds for a service to respond to a command from the supervisor. If you see output that references a timeout, it means that a signal has been sent to the process, but that the process has yet to actually comply. In general, processes that have timed out are not a big concern, unless they are failing to respond to the signals at all. If a process is not responding, use a command like ``private-chef-ctl kill`` to stop the process, investigate the cause (if required), and then use ``private-chef-ctl start`` to re-enable it.
   * - ``stop``
     - Use this command to stop all services enabled on |chef server oec|. This command can also be run for an individual service by specifying the name of the service in the command. For example:

       .. code-block:: bash
          
          $ private-chef-ctl stop name_of_service

       where ``name_of_service`` represents the name of any service that is listed after running the ``private-chef-ctl service-list`` command.
   * - ``restart``
     - Use this command to restart all services enabled on |chef server oec|. This command can also be run for an individual service by specifying the name of the service in the command. For example:

       .. code-block:: bash
          
          $ private-chef-ctl restart name_of_service

       where ``name_of_service`` represents the name of any service that is listed after running the ``private-chef-ctl service-list`` command.
   * - ``once``
     - The supervisor for |chef server oec| is configured to restart any service that fails, unless that service has been asked to change its state. Use this command to tell the supervisor that, should any service fail, do not attempt to restart it. This command is useful when troubleshooting configuration errors that prevent a service from starting. Run ``private-chef-ctl once`` followed by ``private-chef-ctl status`` to look for services in a down state to identify which services are in trouble. This command can also be run for an individual service by specifying the name of the service in the command. For example:

       .. code-block:: bash
          
          $ private-chef-ctl once name_of_service

       where ``name_of_service`` represents the name of any service that is listed after running the ``private-chef-ctl service-list`` command.
   * - ``hup``
     - Use this command to send a ``SIGHUP`` to all services. This command can also be run for an individual service by specifying the name of the service in the command. For example:

       .. code-block:: bash
          
          $ private-chef-ctl hup name_of_service

       where ``name_of_service`` represents the name of any service that is listed after running the ``private-chef-ctl service-list`` command.
   * - ``term``
     - Use this command to send a ``SIGTERM`` to all services. This command can also be run for an individual service by specifying the name of the service in the command. For example:

       .. code-block:: bash
          
          $ private-chef-ctl term name_of_service 

       where ``name_of_service`` represents the name of any service that is listed after running the ``private-chef-ctl service-list`` command.
   * - ``int``
     - Use this command to send a ``SIGINT`` to all services. This command can also be run for an individual service by specifying the name of the service in the command. For example:

       .. code-block:: bash
          
          $ private-chef-ctl int name_of_service

       where ``name_of_service`` represents the name of any service that is listed after running the ``private-chef-ctl service-list`` command.
   * - ``kill``
     - Use this command to send a ``SIGKILL`` to all services. This command can also be run for an individual service by specifying the name of the service in the command. For example:

       .. code-block:: bash
          
          $ private-chef-ctl kill name_of_service

       where ``name_of_service`` represents the name of any service that is listed after running the ``private-chef-ctl service-list`` command.
   * - ``tail``
     - Use this command to follow all |chef server oec| logs for all services. This command can also be run for an individual service by specifying the name of the service in the command. For example:

       .. code-block:: bash
          
          $ private-chef-ctl tail name_of_service

       where ``name_of_service`` represents the name of any service that is listed after running the ``private-chef-ctl service-list`` command.


List of services:

* bifrost
* bookshelf
* couchdb
* nginx
* opscode-account
* opscode-certificate
* opscode-erchef
* opscode-expander
* opscode-expander-reindexer
* opscode-org-creator
* opscode-solr
* opscode-webui
* postgresql
* rabbitmq
* redis