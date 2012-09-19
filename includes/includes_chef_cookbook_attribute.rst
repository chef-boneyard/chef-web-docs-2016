.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

An attribute can be defined in a cookbook (or a recipe) and then used to override the default settings on node. When a cookbook is loaded during a |chef| run, these attributes are compared to the attributes that are already present on the node. When the cookbook attributes take precedence over the default attributes, |chef| will apply those new settings and values during the |chef| run on the node.