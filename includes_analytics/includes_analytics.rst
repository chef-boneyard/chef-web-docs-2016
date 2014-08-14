.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |chef analytics| platform is a feature of |chef| that provides real-time visibility into what is happening on the |chef server|, including what's changing, who made those changes, and when they occurred. Individuals may be notified of these changes in real-time. Use this visibility to verify compliance against internal controls.

|chef analytics| runs on separate hardware from the |chef server| and consists of the following components:

* |chef actions|. Actions are policy and administrative changes made to the |chef server|. The |chef server| gathers a lot of data—--each node object, the node run history for all nodes, the history of every cookbook and cookbook version, how policy settings, such as roles, environments, and data bags, are applied and to what they are applied, individual user data, and so on.


