.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

An attribute can be defined in a recipe and then used to override the default settings on a node. When a recipe is applied during a |chef client| run, these attributes are compared to the attributes that are already present on the node. When the recipe attributes take precedence over the default attributes, the |chef client| will apply those new settings and values during the |chef client| run.
