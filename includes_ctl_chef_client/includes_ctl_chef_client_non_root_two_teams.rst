.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


One example of running the |chef client| as a non-root user involves multiple teams in a  distributed organization. One is the core application services team, the other is a development team. The core application services team manages the system itself. The development team manages the application stack that runs on that system. Each team has its own set of privileges. In addition, the development team must run the |chef client| as a non-root user.

There are two approaches:

* Configure two nodes, one for each team
* Configure a single node and configure privileges for the non-root user

**Configure one node, configure privileges for non-root user**

In most situations, a node should be configured to ensure the non-root user can run the |chef client| as required:

* Configure the node to run the |chef client| as a daemonized user; this |chef client| manages the system itself plus the application stack
* Give the non-root user read access to the existing client key
* Give the non-root user read access to the configuration files (/etc/chef/)
* Give the non-root user read/write access to the location in which files and directories necessary to maintain the application stack are placed
* Add that location to the |client rb| file

**Configure two nodes, one for each team**

In some situations, a node may be managed as if it were two nodes:

* Configure one node to run the |chef client| as the non-root user; trigger this |chef client| manually  (via |ssh|, |push jobs|, and so on)
* Configure another node to run the |chef client| as a daemonized user; this |chef client| manages the application stack on the node
* Register both of these nodes with the |chef server|; use the |chef server oec| security model to limit access to the node on which the |chef client| is installed as a root user
* Further separation of workflows can be done using multiple organizations in |chef server oec|