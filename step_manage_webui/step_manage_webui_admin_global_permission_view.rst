.. This is an included how-to. 


To view global permissions:

#. Open |opscode manage|.
#. Click |opscode manage admin|.
#. Click |opscode manage admin_global_permissions|.
#. Select the |chef server| object type: ``cookbooks``, ``data bags``, ``environments``, ``groups``, ``nodes``, or ``roles``.
#. Click the |opscode manage tab_permissions| tab.
#. Click the |opscode manage button_add_permission| button and enter the name of the user or group to be added.
#. Select or de-select |opscode manage permission list| and |opscode manage permission create| to update the global permissions list.

   where:

   .. list-table::
      :widths: 60 420
      :header-rows: 1
   
      * - Permission
        - Description
      * - |opscode manage permission list|
        - |permission delete| This permission is required for any user who uses the ``knife [object] create`` argument to interact with objects on the |chef server oec| server.
      * - |opscode manage permission create|
        - |permission grant| This permission is required for any user who uses the ``knife [object] list`` argument to interact with objects on the |chef server oec| server.
