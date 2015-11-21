.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |chef server| includes the following object permissions:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Permission
     - Description
   * - **Delete**
     - |permission delete| This permission is required for any user who uses the ``knife [object] delete [object_name]`` argument to interact with objects on the |chef server|.
   * - **Grant**
     - |permission grant| This permission is required for any user who configures permissions using the **Administration** tab in the |chef manage|.
   * - **Read**
     - |permission read| This permission is required for any user who uses the ``knife [object] show [object_name]`` argument to interact with objects on the |chef server|.
   * - **Update**
     - |permission update| This permission is required for any user who uses the ``knife [object] edit [object_name]`` argument to interact with objects on the |chef server| and for any |chef client| to save node data to the |chef server| at the conclusion of a |chef client| run.
