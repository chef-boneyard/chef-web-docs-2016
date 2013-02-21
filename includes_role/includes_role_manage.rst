.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


There are several ways to manage roles:

* |knife| can be used to create, edit, view, list, tag, and delete roles.
* The |management console| can be used to create, edit, view, list, tag, and delete roles. In addition, role attributes can be modified and roles can be moved between environments.
* The |chef client| can be used to manage role data using the command line and JSON files (that contain a hash, the elements of which are added as role attributes). In addition, the ``run_list`` setting allows roles and/or recipes to be added to the role.
* The open source |chef server| can be used to manage role data using the command line and JSON files (that contain a hash, the elements of which are added as role attributes). In addition, the ``run_list`` setting allows roles and/or recipes to be added to the role.
* The |api chef server| can be used to create and manage roles directly, although using |knife| and/or the |chef manager| is the most common way users of |chef| manage roles.
* The command line can also be used with JSON files and third-party services, such as |amazon ec2|, where the JSON files can contain per-instance metadata stored in a file on-disk and then read by |chef solo| or |chef client| as required.
* |chef solo| does not allow roles.

By creating and editing files using the |ruby| DSL or JSON, role data can be dynamically generated with the |ruby| DSL. Roles created and edited using files are compatible with all versions of |chef|, including |chef solo|. Roles created and edited using files can be kept in version source control, which also keeps a history of what changed when. When roles are created and edited using files, they should not be managed using |knife| or the |management console|, as changes will be overwritten.

A run-list that is associated with a role can be edited using the |management console|. The canonical source of a role's data is stored on the |chef server|, which means that keeping role data in version source control can be challenging.

When files are uploaded to a |chef server| from a file and then edited using the |management console|, if the file is edited and uploaded again, the changes made in the |management console| will be lost. The same is true with |knife|, in that if roles are created and managed using |knife| and then arbitrarily updated uploaded JSON data, that action will overwrite what has been done previously using |knife|. It is strongly recommended to keep to one process and not switch back and forth.