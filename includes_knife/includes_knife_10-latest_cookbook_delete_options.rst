.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This argument has the following options:

``-a``, ``--all``
   |all cookbooks delete|

``COOKBOOK_VERSION``
   |COOKBOOK_VERSION delete|

``-p``, ``--purge``
   |purge cookbook| This command is ignored when running against the |chef server oec| or |chef server osc| servers. This is because the server keeps track of which cookbooks use a given piece of cookbook content (via checksum). When a cookbook version is deleted, associated content is also deleted if not referenced by another cookbook object.