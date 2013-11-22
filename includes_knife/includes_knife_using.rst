.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|knife| runs from a management workstation and sits in-between a |chef server| and an organization's infrastructure. |knife| interacts with a |chef server| by using the same REST API that is used by a |chef client|. Role-based authentication controls (RBAC) can be used to authorize changes when |knife| is run with |chef server oec|. |knife| is configured during workstation setup, but subsequent modifications can be made using the |knife rb| configuration file.

