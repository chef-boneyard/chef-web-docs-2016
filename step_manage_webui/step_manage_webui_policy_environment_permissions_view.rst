.. This is an included how-to. 


To view permissions for an environment object:

#. Open |webui|.
#. Click |webui policy|.
#. Click |webui policy_environments|.
#. Select an enviromnent.
#. Click the |webui tab_permissions| tab.

   where:

   .. list-table::
      :widths: 60 420
      :header-rows: 1
   
      * - Permission
        - Description
      * - |webui permission delete|
        - |permission delete| This permission is required for any user who uses the ``knife environment delete [object_name]`` argument to interact with objects on the |chef server oec| server.
      * - |webui permission grant|
        - |permission grant| This permission is required for any user who configures permissions using the |webui admin| tab in the |webui| user interface.
      * - |webui permission read|
        - |permission read| This permission is required for any user who uses the ``knife environment show [object_name]`` argument to interact with objects on the |chef server oec| server.
      * - |webui permission update|
        - |permission update| This permission is required for any user who uses the ``knife environment edit [object_name]`` argument to interact with objects on the |chef server oec| server.