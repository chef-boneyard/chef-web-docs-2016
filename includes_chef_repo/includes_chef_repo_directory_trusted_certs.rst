.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |path trusted certs| directory exists on both the workstation and nodes on which the |chef client| is installed.

* On the workstation, this directory is the location into which |ssl| certificates are placed when they are downloaded from the |chef server| using the |subcommand knife ssl_fetch| command
* On the |chef client|, this directory is the location into which the same |ssl| certificate is placed when nodes are bootstrapped from a workstation
