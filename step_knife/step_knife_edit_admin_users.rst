.. This is an included how-to. 

A user who belongs to the |webui group admins| group must be removed from the group before they may be removed from an organization. To remove a user from the |webui group admins| group, run the following:

.. code-block:: bash

   $ knife edit /group/admin.json

make the required changes, and then save the file.