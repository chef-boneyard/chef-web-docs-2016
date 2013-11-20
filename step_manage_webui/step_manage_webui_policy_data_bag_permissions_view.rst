.. This is an included how-to. 


To view permissions for a data bag object:

#. Open |opscode manage|.
#. Click |opscode manage policy|.
#. Click |opscode manage policy_data_bags|.
#. Select a data bag.
#. Click the |opscode manage tab_permissions| tab.

   where:

   .. list-table::
      :widths: 60 420
      :header-rows: 1
   
      * - Permission
        - Description
      * - |opscode manage permission delete|
        - |permission delete| This permission is required for any user who uses the ``knife data bag delete [object_name]`` argument to interact with objects on the |chef server oec| server.
      * - |opscode manage permission grant|
        - |permission grant| This permission is required for any user who configures permissions using the |opscode manage admin| tab in the |opscode manage| user interface.
      * - |opscode manage permission read|
        - |permission read| This permission is required for any user who uses the ``knife data bag show [object_name]`` argument to interact with objects on the |chef server oec| server.
      * - |opscode manage permission update|
        - |permission update| This permission is required for any user who uses the ``knife data bag edit [object_name]`` argument to interact with objects on the |chef server oec| server.