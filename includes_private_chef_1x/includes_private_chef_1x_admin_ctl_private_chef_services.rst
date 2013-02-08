.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following commands are available for managing services that are used by |chef private|:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Command
     - Description
   * - ``service-list``
     - Displays a list of all the |chef private| services. Those enabled on the machine are labeled with an *.
   * - ``status``
     - Shows the status of the |chef private| services. The output will vary based on the configuration of a given server. This command can also be run for an individual service, rather than every service:

       .. code-block:: bash
          
          $ private-chef-ctl opscode-solr status

       Any service listed in |private chef ctl| service-list can replace opscode-solr in the above.
   * - ``ha-status``
     - Check the status of the H/A configuration of private chef services. This command will check that:

       * The keepalived daemon is enabled in the config.
       * The |drbd| process is enabled in the config.
       * The underlying block device or logical volume for |drbd| has been created and configured.
       * The |drbd| device exists.
       * The current state of the server is ``master`` or ``backup`` and that any migration has completed.
       * The failover VIP is correctly attached to only the ``master`` node.
       * The |drbd| state is correct based on the state of the server being ``master`` or ``backup``.
       * The |drbd| mount point is correctly mounted to only the ``master`` node.
       * The |drbd| replication IPs (typically connected via crossover cable) are both pingable.
       * The runit status of the services are correct (up or down) based on the ``master`` or ``backup`` state.

       If this command succeeds, it will print that everything is okay on the last line:

       .. code-block:: bash
       
          [OK] all checks passed.

       Otherwise it will print out that errors were detected on the last line; the precise error will be listed in the output above:

       .. code-block:: bash

          ...
          [OK] nginx is running correctly, and I am master.
          [ERROR] nrpe is not running.
          [OK] opscode-account is running correctly, and I am master.
          ...
          
          [ERROR] ERRORS WERE DETECTED.
   * - ``start``
     - Start all the enabled |chef private| services. You can also start only a single service, rather than all services:

        .. code-block:: bash

           $ private-chef-ctl opscode-solr start

       The |chef private| supervisor is configured to wait seven seconds for a service to respond to a command from the supervisor. If you see output that references a ``timeout``, it means that the signal has been sent to the process, but that it has yet to actually comply. In general, you can not worry about timed out processes, unless they are failing to respond to the signals at all - in which case you may need to escalate to using a command such as |private chef ctl| kill.
   * - ``stop``
     - Stop all the enabled |chef private| services. You can also stop only a single service:

        .. code-block:: bash

           $ private-chef-ctl opscode-solr stop
   * - ``restart``
     - Restart all the enabled |chef private| services. You can also restart only a single service:

        .. code-block:: bash

           $ private-chef-ctl opscode-solr restart
   * - ``once``
     - The supervisor is configured to restart any services that fail, unless we have specifically asked them to change their state. This command changes this behavior---it tells the supervisor that, should any service fail, do not attempt to restart it ("Run it once"). This command is usually used when troubleshooting configuration errors that cause a service to fail to start: running |private chef ctl| once followed by |private chef ctl| status, and looking for services in the down state will tell you what services are having trouble.

You can also tell only a specific service to run once:

.. code-block:: bash

   $ private-chef-ctl opscode-solr once
   * - ``hup``
     - Send a SIGHUP to all the services. You can also ``hup`` only a specific service:

        .. code-block:: bash

           $ private-chef-ctl opscode-solr hup
   * - ``term``
     - Send a SIGTERM to all the services. You can also send ``term`` to only a specific service:

        .. code-block:: bash

           $ private-chef-ctl opscode-solr term
   * - ``int``
     - Send a SIGINT to all the services. You can also send ``int`` to only a specific service:

        .. code-block:: bash

           $ private-chef-ctl opscode-solr int
   * - ``kill``
     - Send a SIGKILL to all the services. You can also send a ``kill`` to only a specific service:

        .. code-block:: bash

           $ private-chef-ctl opscode-solr kill
   * - ``tail``
     - Follow the |chef private| logs for all services. You can also watch the logs of a specific service:

        .. code-block:: bash

           $ private-chef-ctl opscode-solr tail

