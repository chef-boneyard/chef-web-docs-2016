.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

An |chef api client| is any machine that has permission to use the |api chef server| to communicate with the |chef server|. An |chef api client| is typically a node (on which the |chef client| runs) or a workstation (on which |knife| runs), but can also be any other machine configured to use the |api chef server|. Each request to the |chef server| that is made by an |chef api client| private key uses a private key. The |chef server| then uses a public key to verify the request.
