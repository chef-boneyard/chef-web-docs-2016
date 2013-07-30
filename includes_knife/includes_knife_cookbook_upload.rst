.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``upload`` argument is used to upload one or more cookbooks (and any files that are associated with those cookbooks) from a local repository to the |chef server|. Only files that do not already exist on the |chef server| will be uploaded.

.. note:: Use a |chefignore| file to prevent the upload of specific files and file types, such as temporary files or files placed in folders by version control systems. The |chefignore| file must be located in the root of the cookbook repository and must use rules similar to filename globbing (as defined by the |ruby| ``File.fnmatch`` syntax).

