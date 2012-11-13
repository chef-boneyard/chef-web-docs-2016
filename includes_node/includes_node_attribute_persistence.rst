.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

At the beginning of a |chef| run, all default, override, and automatic attributes are reset. |chef| rebuilds these attributes based on attributes contained in cookbooks, recipes, roles, and environments, plus |ohai| data that is collected about that node at the beginning of the |chef| run. Normal attributes are never reset. During a |chef| run, any new attributes that are passed to the |chef client| are merged with the existing normal attributes on the node and any new settings are applied according to attribute precedence. At the conclusion of the |chef| run, all default, override, and automatic attributes disappear, leaving only a collection of normal attributes that will persist until the next |chef| run.



