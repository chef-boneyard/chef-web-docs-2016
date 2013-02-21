.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |chef server| acts as a hub for configuration data. The server stores cookbooks, the policies for applying the cookbooks, and metadata describing each registered node in the infrastructure. Nodes ask the |chef server| for configuration details (such as recipes, templates, and file distributions) using |chef client|. |chef| then does as much of the configuration work as possible on the nodes themselves (and not on the |chef server|). This scalable approach distributes the configuration effort throughout the organization.
