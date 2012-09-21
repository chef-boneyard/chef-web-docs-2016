.. This is an included how-to. 

To search in a specific data bag for a specific data bag item, enter the following:

.. code-block:: bash

   $ knife search admins 'id:charlie'
   
where ``id`` is the name of the data bag and ``charlie`` is the name of the data bag item. Something like the following will be returned:

.. code-block:: bash

   1 items found
   _rev:       1-39ff4099f2510f477b4c26bef81f75b9
   chef_type:  data_bag_item
   comment:    Charlie the Unicorn
   data_bag:   admins
   gid:        ops
   id:         charlie
   shell:      /bin/zsh
   uid:        1005
