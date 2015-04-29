.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A client is an actor that has permission to access the |chef server|. A client is most often a node (on which the |chef client| runs), but is also a workstation (on which |knife| runs), or some other machine that is configured to use the |api chef server|. Each request to the |chef server| that is made by a client uses a private key for authentication that must be authorized by the public key on the |chef server|.
