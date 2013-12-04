.. This is an included how-to. 


To view permissions for a role object:

#. Open |webui|.
#. Click |webui policy|.
#. Click |webui policy_roles|.
#. Select a role.
#. Click the |webui tab_permissions| tab.

   where:

   .. list-table::
      :widths: 60 420
      :header-rows: 1
   
      * - Permission
        - Description
      * - |webui permission delete|
        - |permission delete| This permission is required for any user who uses the ``knife role delete [object_name]`` argument to interact with objects on the |chef server oec| server.
      * - |webui permission grant|
        - |permission grant| This permission is required for any user who configures permissions using the |webui admin| tab in the |webui| user interface.
      * - |webui permission read|
        - |permission read| This permission is required for any user who uses the ``knife role show [object_name]`` argument to interact with objects on the |chef server oec| server.
      * - |webui permission update|
        - |permission update| This permission is required for any user who uses the ``knife role edit [object_name]`` argument to interact with objects on the |chef server oec| server.