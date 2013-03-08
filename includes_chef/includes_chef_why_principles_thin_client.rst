.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef| does as much work as possible on the node; a |chef client| runs on each node and it only interacts with the |chef server| when it needs to. The |chef server| is designed to distribute of data to each node easily, including all cookbooks, recipes, templates, files, and so on. The |chef server| also retains a copy of the state of the node at the conclusion of every |chef| run. This approach ensures that the actual work needed to configure each node in your infrastructure is distributed across the organization, rather than centralized on smaller set of configuration management servers.