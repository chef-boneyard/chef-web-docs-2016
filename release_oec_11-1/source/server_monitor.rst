.. THIS PAGE DOCUMENTS Enterprise Chef server version 11.1

=====================================================
Monitor
=====================================================

Monitoring the |chef server oec| server involves two types of checks: application and system.

Application Checks
=====================================================
Application-level checks should be done periodically to ensure that there is enough disk space, enough memory, and that the front-end and back-end services are communicating.

|couch db|
-----------------------------------------------------
|couch db| can be polled directly using HTTP. If |couch db| is running it should respond on port 5984. For example:

.. code-block:: bash

   $ curl http://localhost:5984/

which will return something similar to:

.. code-block:: bash

   {
     "couchdb":"Welcome",
     "version":"1.0.3"
   }

or:

.. code-block:: bash

   $ curl http://localhost:5984/opscode_account

which will return something similar to:

.. code-block:: bash

   {
     "db_name":"opscode_account",
     "doc_count":187,
     "doc_del_count":0,
     ...
   }

|couch db| can also be accessed using a web interface. For example, using an |ssh| tunnel:

.. code-block:: bash

   $ ssh -L5984:localhost:5984 ubuntu@172.31.6.222

and then use a local web browser and navigate to the following address::

   http://localhost/5984/_utils/

|drbd|
-----------------------------------------------------
|drbdadm| is the management tool for |drbd|. It can be used to obtain status information and to alter the state of the |drbd| cluster. For more information about |drbdadm|, see http://www.drbd.org/users-guide/re-drbdadm.html.

``/proc/drbd`` is a virtual file that displays real-time status information about all currently-configured |drbd| resources. Use the following command to view the contents of this virtual file:

.. code-block:: bash

   $ cat /proc/drbd

Use ``private-chef-ctl ha-status`` along with ``/proc/drbd`` to help evaluate the current state of the cluster. Follow the split-brain recovery procedures for |drbd| if the cluster becomes two unconnected pieces.

|erlang|
-----------------------------------------------------
Many components of |chef server oec| are written using |erlang| and run on the |beam| virtual machine. One feature of |erlang| and |beam| is the ability to interact with the running service using a command shell. For example:

.. code-block:: bash

   $ cd /opt/opscode/embedded/service/erl/
     export PATH=$PATH:/opt/opscode/bin:/opt/opscode/embedded/bin
     bin/erl -setcookie service_name -name me@127.0.0.1 -remsh service_name@127.0.0.1

where ``service_name`` is ``authz``, ``erchef``, or ``org_app``. This command will then open a shell that is connected to the |erchef| processes:

.. code-block:: bash

   $ Erlang R15B02 (erts-5.9.2) [source] [64-bit] ...

.. warning:: Connecting to the |erlang| processes should only be done when directed by |company_name| support services.

To connect to the |service authz| service, use the following command:

.. code-block:: bash

   $ erl -setcookie authz -name me@127.0.0.1 -remsh authz@127.0.0.1

To connect to the |service erchef| service, use the following command:

.. code-block:: bash

   $ erl -setcookie erchef -name me@127.0.0.1 -remsh erchef@127.0.0.1

To connect to the |service orgcreator| service, use the following command:

.. code-block:: bash

   $ erl -setcookie org_app -name me@127.0.0.1 -remsh org_app@127.0.0.1

|nginx|
-----------------------------------------------------
Use |nginx| to monitor for services that may be returning 504 errors. Use the following command on a front-end machine:

.. code-block:: bash

   $ grep 'HTTP/1.1" 504' /var/log/opscode/nginx/access.log

and then extract the URLs and sort them by ``uniq`` count:

.. code-block:: bash

   $ grep 'HTTP/1.1" 504' nginx-access.log | cut -d' ' -f8 | sort | uniq -c | sort

In a large installation, restricting these results to a subset of results may be necessary:

.. code-block:: bash

   $ tail -10000 nginx-access.log | grep 'HTTP/1.1" 504' | cut -d' ' -f8 | sort | uniq -c | sort

|postgresql|
-----------------------------------------------------
|postgresql ctl| is the management tool for |postgresql|. It can be used to obtain information about data stored in |postgresql|. For more information about |postgresql ctl|, see http://www.postgresql.org/docs/manuals/, and then the doc set appropriate for the version of |postgresql| being used.

To connect to the |postgresql| database, run the following command:

.. code-block:: bash

   $ cd /opt/opscode/embedded/service/postgresql/
     export PATH=$PATH:/opt/opscode/bin:/opt/opscode/embedded/bin
     bin/psql -U opscode_chef

.. warning:: Connecting to the |postgresql| database should only be done when directed by |company_name| support services.

|rabbitmq|
-----------------------------------------------------
|rabbitmq ctl| is the management tool for |rabbitmq|. It can be used to obtain status information and to ensure that message queuing is running properly. For more information about |rabbitmq ctl|, see https://www.rabbitmq.com/man/rabbitmqctl.1.man.html.

To obtain status information for message queues, run the following command:

.. code-block:: bash

   $ cd /opt/opscode/embedded/service/rabbitmq/
     export PATH=$PATH:/opt/opscode/bin:/opt/opscode/embedded/bin
     bin/rabbitmqctl status

to return something similar to:

.. code-block:: bash

   Status of node rabbit@localhost ...
   [{pid,3044},
    {running_applications, [{rabbit,"RabbitMQ","2.7.1"},
                            {mnesia,"MNESIA CXC 138 12","4.7.1},
                            {os_mon,"CPO CXC 138 46","2.2.10},
                            ...
                            {kernel,"ERTS CXC 138 10","2.15.2"}]},
    {os,{unix,linux}},
    {erlang_version,"Erlang R15B02 (erts-5.9.2) [source] [64-bit] ..."},
    {memory,[{total,96955896},
             {processes,38634560},
             ...
             {ets,5850336}]},
    {vm_memory_high_watermark,0.39999999995176794},
    {vm_memory_limit,1658647347}]
    ... done
       
|redis|
-----------------------------------------------------
|redis cli| is the management tool for |redis|. It can be used to obtain information about keys that are being used with |chef server oec|. For more information about |redis cli|, see http://redis.io/commands.

To verify that the connection to |redis| is alive, run the following command:

.. code-block:: bash

   $ cd /opt/opscode/embedded/service/redis/
     export PATH=$PATH:/opt/opscode/bin:/opt/opscode/embedded/bin
     bin/redis-cli PING

to return:

.. code-block:: bash

   PONG

Node and/or Workstation
=====================================================
If a client makes an HTTP request to the server that returns a non-specific error message, this is typically an issue with the |service chef|, |service account|, or |service erchef| service. View the full error message for these services in their respective log files. The error is most often a stacktrace from the application error. In some cases, the error message will clearly indicate a problem with another service, which can then be investigated further. For non-obvious errors, please contact |company_name| support services.

Disks
=====================================================
Over time, and with enough data, disks will fill up or exceed the per-disk quotas that may have been set for them and they will not be able to write data. A disk that is not able to write data will not be able to support certain components of |chef server oec|, such as |postgresql|, |rabbitmq|, service log files, and deleted file handles. Monitoring disk usage is the best way to ensure that disks don't fill up or exceed their quota.

The following components should be monitored for signs that disks may be rapidly filling up:

* **PostgreSQL** |postgresql| is the data store for |chef server oec|.
* **RabbitMQ** The |rabbitmq| data folder can fill up if the |service expander| service is not able to keep up with the data being moved into the search database by |rabbitmq|. When the |service expander| service falls behind, |rabbitmq| will start storing the individual messages on-disk while it waits for the |service expander| service to catch up. If the |rabbitmq| disk fills up completely, |rabbitmq| will need to be restarted to free up the disk space and any data that was stored on-disk will be lost.
* **Log files** If ``/var/log/opscode`` is taking up a lot of disk space, ensure that the |chef server oec| log rotation cron job is running without errors. These errors can be found in ``/var/log/messages``, ``/var/log/syslog`` and/or the root user's local mail.
* **Deleted file handles** Running processes with file handles associated with one (or more) deleted files will prevent the disk space being used by the deleted files from being reclaimed. Use the ``sudo lsof | grep '(deleted)'`` command to find all deleted file handles. 

Ports
=====================================================
All services must be listening on the appropriate ports. Most monitoring systems provide a means of testing whether a given port is accepting connections and service-specific tools may also be available. In addition, the generic system tool |telnet| can also be used to initiate a |tcpip| connection:

.. code-block:: bash

   $ telnet HOST_NAME PORT

System Checks
=====================================================
System-level checks should be done for the following components: ports, services (|service erchef| and |service expander|), and high availability status.

ha-status
-----------------------------------------------------
.. include:: ../../includes_ctl_private_chef/includes_ctl_private_chef_ha_status.rst

opscode-authz
-----------------------------------------------------
The authz API provides a high-level view of the health of the |service authz| service with a simple endpoint: ``_ping``. This endpoint can be accessed using |curl| and |gnu wget|. For example:

.. code-block:: bash

   $ curl http://localhost:9463/_ping

This command typically prints a lot of information. Use |python| to use pretty-print output:

.. code-block:: bash

   $ curl http://localhost:9463/_ping | python -mjson.tool

opscode-erchef
-----------------------------------------------------
The status API provides a high-level view of the health of the system with a simple endpoint: ``_status``. This endpoint can be accessed using |curl| and |gnu wget|. For example:

.. code-block:: bash

   $ curl http://localhost:8000/_status

which will return something similar to:

.. code-block:: bash

   {
     "status":"pong",
     "upstreams":{"upstream_service":"pong","upstream_service":"fail",...},
   }

For each of the upstream services, ``pong`` or ``fail`` is returned. The possible upstream names are:

* ``chef_solr`` (for the |service solr| service)
* ``chef_sql`` (for the |service postgresql| service)
* ``chef_otto`` (for the |service couchdb| service)
* ``oc_chef_authz`` (for the |service authz| service)

If any of the status values return ``fail``, this typically means the |chef server| is unavailable for that service.

opscode-expander
-----------------------------------------------------
As the queue depth increases it may take longer for updates posted to the |chef server| by each |chef client| to be added to the search indexes on the |chef server|. The depth of this queue should be monitored using the following command:

.. code-block:: bash

   $ cd /opt/opscode/embedded/service/opscode-expander/
     export PATH=$PATH:/opt/opscode/bin:/opt/opscode/embedded/bin

Search Indexes
++++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_search/includes_search.rst

If the search indexes are not being updated properly, first ensure that the |service expander| service is running on the backend machine:

.. code-block:: bash

   $ private-chef-ctl status opscode-expander

and then (if it is not running), start the service:

.. code-block:: bash

   $ private-chef-ctl start opscode-expander

If the |service expander| does not start correctly, then take a look at the ``/var/log/opscode/opscode-expander/current`` log file for error messages. 

If the |service expander| is running, check the queue length:

.. code-block:: bash

   $ watch -n1 sudo -E bin/opscode-expanderctl queue-depth

If the number of total messages continues to increase, increase the number of workers available to the |service expander| service.

opscode-expanderctl
++++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_opscode_expander/includes_ctl_opscode_expander.rst

.. include:: ../../includes_ctl_opscode_expander/includes_ctl_opscode_expander_options.rst

.. include:: ../../includes_ctl_opscode_expander/includes_ctl_opscode_expander_example.rst

