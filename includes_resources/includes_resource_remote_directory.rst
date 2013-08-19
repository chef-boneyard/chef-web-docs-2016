.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |resource remote_directory| resource is used to recursively transfer a directory from a cookbook's files or default directory. A remote directory will obey file specificity; the directory that will be copied should be located under COOKBOOK_NAME/files/default/REMOTE_DIRECTORY. A host-or distribution-specific path can also be used.
