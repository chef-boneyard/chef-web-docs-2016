.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

On high availability back-ends, whether a service should be running or not is controlled by our clustering service, keepalived. When running private-chef-ctl status on these nodes, a few things change:

On the back-end node that is currently the “backup” server, it would be normal to see only the keepalived and nrpe processes as running.
On the back-end node that is currently the “master” server, it would be normal to see all the services running, but to have normally down appear in the third segment. This reflects the fact that, on reboot, this server would not attempt to start these services: instead, it would allow keepalived to decide whether they should be running based on the cluster state.
A sample status line for a service on a High Availability ``master``:

.. code-block:: bash

   run: opscode-solr: (pid 25341) 239s, normally down; run: log: (pid 5700) 145308s

