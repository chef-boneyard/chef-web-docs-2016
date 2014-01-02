.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A single instance of |chef server oec| can support many organizations. Each organization has a unique set of groups and users. Each organization manages a unique set of nodes, on which a |chef client| is installed and configured so that it may interact with a single organization on the |chef server|.

.. image:: ../../images/server_rbac_orgs_groups_and_users.png

A user may belong to multiple organizations under the following conditions: role-based access control is configured per-organization, for a single user to interact with the |chef server| using |knife| from the same |chef repo|, that user may need to edit their |knife rb| file prior to that interaction.