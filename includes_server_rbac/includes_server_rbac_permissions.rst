.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef server oec| includes the following default permissions:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Permission
     - Description
   * - |opscode manage permission delete|
     - |permission delete| This permission is required for any user who uses the ``knife [object] delete [object_name]`` argument to interact with objects on the |chef server oec| server.
   * - |opscode manage permission grant|
     - |permission grant| This permission is required for any user who configures permissions using the |opscode manage admin| tab in the |opscode manage| user interface.
   * - |opscode manage permission read|
     - |permission read| This permission is required for any user who uses the ``knife [object] show [object_name]`` argument to interact with objects on the |chef server oec| server.
   * - |opscode manage permission update|
     - |permission update| This permission is required for any user who uses the ``knife [object] edit [object_name]`` argument to interact with objects on the |chef server oec| server and for any |chef client| to save node data to the |chef server| at the conclusion of a |chef client| run.

and the following default global permissions:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Permission
     - Description
   * - |opscode manage permission create|
     - |permission create| This permission is required for any user who uses the ``knife [object] create`` argument to interact with objects on the |chef server oec| server.
   * - |opscode manage permission list|
     - |permission list| This permission is required for any user who uses the ``knife [object] list`` argument to interact with objects on the |chef server oec| server.