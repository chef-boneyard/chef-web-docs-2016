.. This is an included how-to. 


To view group permissions:

#. Open |opscode manage|.
#. Click |opscode manage admin|.
#. Click |opscode manage admin_groups|.
#. Select a group.
#. Click the |opscode manage tab_group_permissions| tab.

   where:

   .. list-table::
      :widths: 60 420
      :header-rows: 1
   
      * - Permission
        - Description
      * - |opscode manage permission delete|
        - |permission delete| This permission is required for any user who uses the ``knife node delete [object_name]`` argument to interact with objects on the |chef server oec| server.
      * - |opscode manage permission grant|
        - |permission grant| This permission is required for any user who configures permissions using the |opscode manage admin| tab in the |opscode manage| user interface.
      * - |opscode manage permission read|
        - |permission read| This permission is required for any user who uses the ``knife node show [object_name]`` argument to interact with objects on the |chef server oec| server.
      * - |opscode manage permission update|
        - |permission update| This permission is required for any user who uses the ``knife node edit [object_name]`` argument to interact with objects on the |chef server oec| server and for any |chef client| to save node data to the |chef server| at the conclusion of a |chef client| run.
