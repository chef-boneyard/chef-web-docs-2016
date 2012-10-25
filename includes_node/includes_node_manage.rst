.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

There are several ways to manage nodes, including by using |knife| or the |management console| or by using command-line tools that are specific to the |chef client| or to |chef solo|.

* |knife| can be used to create, edit, view, list, tag, and delete nodes.
* |knife| plug-ins can be used to create, edit, and manage nodes that are located on cloud providers.
* The |management console| on the |chef server| can be used to create, edit, view, list, tag, and delete nodes. In addition, node attributes can be modified and nodes can be moved between environments.
* The |chef client| can be used to manage node data using the command line and JSON files (that contain a hash, the elements of which are added as node attributes). In addition, the ``run_list`` setting allows roles and/or recipes to be added to the node.
* |chef solo| can be used to manage node data using the command line and JSON files (that contain a hash, the elements of which are added as node attributes). In addition, the ``run_list`` setting allows roles and/or recipes to be added to the node.
* The command line can also be used to edit JSON files and files that are related to third-party services, such as |amazon ec2|, where the JSON files can contain per-instance metadata stored in a file on-disk and then read by |chef solo| or |chef client| as required.