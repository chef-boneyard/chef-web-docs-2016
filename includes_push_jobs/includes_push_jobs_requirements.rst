.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|push jobs| has the following requirements:

* |chef server oec| version 11.0.1 (or later)
* To use the ``push-jobs`` cookbook to configure the |push jobs| client, the |chef client| must also be present on the node (because only the |chef client| can use a cookbook to configure a node)
* TCP protocol ports 10000-10003 (the ports through which the client communicates with the server)

The |push jobs| client can run on the following platforms:

* |ubuntu| 10.04, 10.10, 12.04, and 12.10
* |centos| 5 and 6
* |windows|
