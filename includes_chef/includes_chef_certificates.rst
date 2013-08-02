.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

An |ssl| certificate is a common part of every web application infrastructure. A certificate can be created by a |rake| task, modified (as needed), and then copied into a cookbook for use later. A cookbook uses a resource to identify which certificate to use and when to use it. |ssl| certificates are cached on the node and are updated (as needed) during a |chef client| run.

