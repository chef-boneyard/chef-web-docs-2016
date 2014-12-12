.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |path trusted_certs| directory stores trusted |ssl| certificates used to access the |chef server|:

* On each workstation, this directory is the location into which |ssl| certificates are placed after they are downloaded from the |chef server| using the |subcommand knife ssl_fetch| command
* On every node, this directory is the location into which |ssl| certificates are placed when  node has been bootstrapped with the |chef client| from a workstation
