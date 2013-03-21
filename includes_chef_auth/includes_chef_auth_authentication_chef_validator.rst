.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Every request from the |chef client| to the |chef server| must be an authenticated request using the |api chef server|. When the |chef client| starts a |chef| run, a check is done to see if the client key exists on the node at ``/etc/chef/client.pem``. If the key exists, it is used as part of the authentication request to the |chef server|. If the key does not exist, |chef| will use the key assigned to the |chef validator| (``/etc/chef/validation.pem``) to ensure that each node can make an authenticated request to the |chef server| during its first |chef| run. The key pair used by the |chef validator| is created when |chef| is installed on a node, either manually or using a |knife| bootstrap operation. If the |chef validator| is unable to make an authentication request to the |chef server|, the |chef| run fails.
