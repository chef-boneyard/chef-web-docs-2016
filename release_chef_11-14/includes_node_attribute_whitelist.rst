.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

You can now whitelist attributes that will be saved by the node by providing a hash with the keys you want to include. Whitelist filters are described for each attribute level: ``automatic_attribute_whitelist``, ``default_attribute_whitelist``, ``normal_attribute_whitelist``, and ``override_attribute_whitelist``.

If your automatic attribute data looks like

.. code-block:: javascript

   {
     "filesystem" => {
       "/dev/disk0s2" => {
         "size" => "10mb"
       },
       "map - autohome" => {
         "size" => "10mb"
       }
     },
     "network" => {
       "interfaces" => {
         "eth0" => {...},
         "eth1" => {...},
       }
     } 
   }

and your config file looks like

.. code-block:: ruby

   automatic_attribute_whitelist = ["network/interfaces/eth0"]

then the entire ``filesystem`` and ``eth1`` subtrees will not be saved by the node. To save the ``/dev/disk0s2`` subtree, you must write ``automatic_attribute_whitelist = [ ["filesystem", "/dev/disk0s2"] ]``. If your config file looks like ``automatic_attribute_whitelist = []``, then none of your automatic attribute data will be saved by the node. The default behavior is for the node to save all the attribute data. This can be ensured by setting your whitelist filter to ``nil``. We recommend only using ``automatic_attribute_whitelist`` to reduce the size of the system data being stored for nodes, and discourage the use of the other attribute whitelists except by advanced users.

