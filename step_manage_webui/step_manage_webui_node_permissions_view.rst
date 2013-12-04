.. This is an included how-to. 


To view permissions for a node:

#. Open |webui|.
#. Click |webui nodes|.
#. Select a node.
#. Click the |webui tab_permissions| tab.

   where:

   .. list-table::
      :widths: 60 420
      :header-rows: 1
   
      * - Permission
        - Description
      * - |webui permission delete|
        - |permission delete| This permission is required for any user who uses the ``knife node delete [object_name]`` argument to interact with objects on the |chef server oec| server.
      * - |webui permission grant|
        - |permission grant| This permission is required for any user who configures permissions using the |webui admin| tab in the |webui| user interface.
      * - |webui permission read|
        - |permission read| This permission is required for any user who uses the ``knife node show [object_name]`` argument to interact with objects on the |chef server oec| server.
      * - |webui permission update|
        - |permission update| This permission is required for any user who uses the ``knife node edit [object_name]`` argument to interact with objects on the |chef server oec| server and for any |chef client| to save node data to the |chef server| at the conclusion of a |chef client| run.
