.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

At the beginning of a |chef client| run, all attributes are reset. The |chef client| rebuilds them using automatic attributes collected by |ohai| at the beginning of the |chef client| run and then using default and override attributes that are specified in cookbooks or by roles and environments. Normal attributes are never reset. All attributes are then merged and applied to the node according to attribute precedence. At the conclusion of the |chef client| run, the attributes that were applied to the node are saved to the |chef server| as part of the node object.
