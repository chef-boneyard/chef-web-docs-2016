.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Users of the |chef server| can only perform authorized actions. The |chef server| has two authorization models:

* |chef server oec| uses a role-based access control (RBAC) model for both hosted and non-hosted versions
* The open source |chef server| has a single tenant access control model where users require admin rights to create, read, update, or delete objects; non-admins have read access to all objects and update access a single node