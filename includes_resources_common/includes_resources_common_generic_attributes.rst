.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A `resource <http://docs.chef.io/resource.html>`_ defines the desired state for a single configuration item present on a node that is under management by |chef|. A resource collection---one (or more) individual resources---defines the desired state for the entire node. During every `chef-client run <http://docs.chef.io/essentials_nodes_chef_run.html>`_, the current state of each resource is tested, after which the |chef client| will take any steps that are necessary to repair the node and bring it back into the desired state.
