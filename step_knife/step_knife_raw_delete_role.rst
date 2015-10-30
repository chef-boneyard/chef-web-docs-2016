.. This is an included how-to. 


To delete a role, enter a command similar to:

.. code-block:: bash

   $ knife raw -m DELETE /roles/role-foo.json

to return something similar to:

.. code-block:: bash

   {
     "name":"role-foo",
     "json_class":"Chef::Role",
     "chef_type":"role"
   }
