.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A scaled back end deployment is the most common starting point for high availability, with regard to |chef server oec|. It is easier to scale out and load balance the front end servers later, but it's essential to set up the back end servers for primary/secondary failover, system backups, and so on, as part of the initial configuration. Most |chef server oec| customers choose this configuration.

.. image:: ../../images/oec_server_deploy_be.png
