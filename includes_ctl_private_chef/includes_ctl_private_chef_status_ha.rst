.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


On back-end servers in a |ha| topology, |keepalived| is used by the clustering service to determine whether a service should be running. If the ``status`` subcommand is run against any of these nodes, a few things change:

* On the back-end node that is currently the backup server, it is normal to see only two running processes: |keepalived| and |nagios nrpe|
* On the back-end node that is currently the master server, it is normal to see all services running. It is also normal to see some services in a down state if the server, on reboot, did not attempt to start the services because |keepalived| determines which services are restarted based on the state of the cluster

A sample status line for a service that is running on the master server in a |ha| topology:

.. code-block:: bash

   run: opscode-solr: (pid 25341) 239s, normally down; run: log: (pid 5700) 145308s





