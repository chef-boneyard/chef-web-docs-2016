.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Every object on the |chef hosted| or |chef private| server is secured using role-based access control (RBAC). These objects include cookbooks, node objects, roles, environments, data bags, and search indexes. Each object has an associated access control list (ACL) that defines up to five access control entries (ACEs): ``create``, ``delete``, ``grant``, ``read``, and ``update``. Each object can only be accessed after a user sends an authentication request to the |chef server|, and only after the |chef server| authorizes that request and applies the ACL and ACE settings for that user.
