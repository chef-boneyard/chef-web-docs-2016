.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |chef client| can be run as a daemon by using recipes built in to the |cookbook chef_client| cookbook. The ``default`` recipe in this cookbook may be added to a node's run-list, after which the |chef client| will be run as a daemon whose behavior configured using the attributes defined by the cookbook. For the full list of attributes and configuration options, see the `chef-client cookbook repository on github <https://github.com/opscode-cookbooks/chef-client/>`_.

* The attributes in this cookbook may be used to configure the behavior of the |chef client| when running as a service (via one of the service-based recipes) or in cron (via the ``cron`` recipe), or within recipes as scenarios dictate.
* The recipes in this cookbook can be used to set up the |config rb| file (``config``), run the |chef client| as a service (``default``; for a specific service use ``chef-client::service_name``, where ``service_name`` is ``arch``, ``bluepill``, ``bsd``, ``daemontools``,``init``, ``launchd``, ``runit``, or ``upstart``, e.g. ``chef-client::daemontools``), to delete the SSL certificate (``delete_validation``), or to configure the |chef client| to run as a cron job (``cron``)

When the |chef client| is run as a daemon, the following signals may be used:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Signal
     - Description
   * - ``HUP``
     - Use to reconfigure the |chef client|.
   * - ``INT``
     - Use to log a message, and then exit.
   * - ``QUIT``
     - Use to dump a stack trace, and then exit.
   * - ``TERM``
     - Use to finish the current |chef client| run, and then exit.
   * - ``USR1``
     - Use to wake up the |chef client| daemon and converge the node.