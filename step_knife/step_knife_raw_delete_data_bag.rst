.. This is an included how-to. 


To delete a data bag, enter a command similar to:

.. code-block:: bash

   $ knife raw -m DELETE /data/foo

to return something similar to:

.. code-block:: bash

   {
     "name":"foo",
     "json_class":"Chef::DataBag",
     "chef_type":"data_bag"
   }