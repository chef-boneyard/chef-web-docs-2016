.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |chef server| acts as a hub, ensuring that the right cookbooks are used, that the right policies are applied, that all of the node objects are up-to-date, and that all of the nodes that will be maintained are registered and known to the |chef server|. The |chef server| distributes configuration details (such as recipes, templates, and file distributions) to every node within the organization. |chef| then does as much of the configuration work as possible on the nodes themselves (and not on the |chef server|). This scalable approach distributes the configuration effort throughout the organization.
