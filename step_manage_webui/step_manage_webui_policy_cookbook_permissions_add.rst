.. This is an included how-to. 


To add a user or group to the permissions list for a cookbook object:

#. Open |opscode manage|.
#. Click |opscode manage policy|.
#. Click |opscode manage policy_cookbooks|.
#. Select a cookbook.
#. Click the |opscode manage tab_permissions| tab.
#. Click the |opscode manage button_add_permission| button and enter the name of the user or group to be added.
#. Select or de-select the |opscode manage permission read|, |opscode manage permission update|, |opscode manage permission delete|, and |opscode manage permission grant| permissions.

   where:

   .. list-table::
      :widths: 60 420
      :header-rows: 1
   
      * - Permission
        - Description
      * - |opscode manage permission delete|
        - |permission delete| This permission is required for any user who uses the ``knife cookbook delete [object_name]`` argument to interact with objects on the |chef server oec| server.
      * - |opscode manage permission grant|
        - |permission grant| This permission is required for any user who configures permissions using the |opscode manage admin| tab in the |opscode manage| user interface.
      * - |opscode manage permission read|
        - |permission read| This permission is required for any user who uses the ``knife cookbook show [object_name]`` argument to interact with objects on the |chef server oec| server.
      * - |opscode manage permission update|
        - |permission update| This permission is required for any user who uses the ``knife cookbook edit [object_name]`` argument to interact with objects on the |chef server oec| server.


