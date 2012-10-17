.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|knife| includes a series of sub-commands that are built around a common set of verbs: ``create``, ``delete``, ``download``, ``list``, ``show``, and ``upload``. These sub-commands allow a user of |knife| to build commands that interact with any object stored in the |chef| repository or stored on the |chef server|. Some important principles behind these sub-commands include:

* A single command that works with objects in the |chef| repository. The sub-commands specify the desired action with the verb, and then the object by specifying the directory in which that object resides: ``cookbooks/``, ``data_bags/``, ``environments/``, and ``roles/``. These sub-commands allow simply the syntax required for tasks because most |chef| objects can uploaded, downloaded, viewed as a list, printed to |json|, and so on. 
* Using the |chef server| as if it were a file system, allowing the repository on the |chef server| to behave like a mirror of the |chef| repository on the workstation. The |chef server| will have the same objects as the local |chef| repository. To make changes to the files on the |chef| server, just download files from the |chef server| or upload files from the |chef| repository.
* The context from which a command is run matters. For example, when working in the ``roles/`` directory, |knife| will know what is being worked with. Enter ``knife show base.json`` and |knife| will return the base role from the |chef server|. From the repository root, enter ``knife show roles/base.json`` to get the same result.

This sub-command has the following syntax::

   knife [ARGUMENT] (options)

