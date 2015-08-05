.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

At the beginning of a |chef client| run, all default, override, and automatic attributes are reset. The |chef client| rebuilds them using data collected by |ohai| at the beginning of the |chef client| run and by attributes that are defined in cookbooks, roles, and environments. Normal attributes are never reset. All attributes are then merged and applied to the node according to attribute precedence. At the conclusion of the |chef client| run, all default, override, and automatic attributes disappear, leaving only a collection of normal attributes that will persist until the next |chef client| run.
