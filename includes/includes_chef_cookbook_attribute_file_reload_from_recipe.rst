.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Attributes sometimes depend on actions taken from within recipes, so it may be necessary to reload a given attribute from within a recipe. For example: if you have an attribute that reads firewall rules, and a recipe that installs a firewall package, the firewall attributes will not be set the first time you execute the cookbook. Since ``include_attribute`` is not available from inside recipes, you will need to manually reload your ``firewall::default attribute`` from recipes by doing something like:

.. code-block:: ruby

   package 'iptables' do
     notifies :create, 'ruby_block[try_firewall_again]', :immediately
   end
   
   ruby_block 'try_firewall_again' do
     block do
       node.load_attribute_by_short_filename('default', 'firewall')
     end
     action :nothing
   end
