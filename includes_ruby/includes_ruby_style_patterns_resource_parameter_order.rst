.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Follow this order for information in each resource declaration:

* Source
* Cookbook
* Resource ownership
* Permissions
* Notifications
* Action

For example:

.. code-block:: ruby

   template '/tmp/foobar.txt' do
     source 'foobar.txt.erb'
     owner  'someuser'
     group  'somegroup'
     mode   '0644'
     variables(
       :foo => 'bar'
     )
     notifies :reload, 'service[whatever]'
     action :create
   end
