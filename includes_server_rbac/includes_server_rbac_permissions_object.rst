.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef server oec| includes the following object permissions:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Permission
     - Description
   * - |webui permission delete|
     - |permission delete| This permission is required for any user who uses the ``knife [object] delete [object_name]`` argument to interact with objects on the |chef server oec| server.
   * - |webui permission grant|
     - |permission grant| This permission is required for any user who configures permissions using the |webui admin| tab in the |webui| user interface.
   * - |webui permission read|
     - |permission read| This permission is required for any user who uses the ``knife [object] show [object_name]`` argument to interact with objects on the |chef server oec| server.
   * - |webui permission update|
     - |permission update| This permission is required for any user who uses the ``knife [object] edit [object_name]`` argument to interact with objects on the |chef server oec| server and for any |chef client| to save node data to the |chef server| at the conclusion of a |chef client| run.
