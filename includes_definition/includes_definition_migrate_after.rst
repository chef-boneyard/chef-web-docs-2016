.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The definition can be better rewritten as a custom resource:

.. code-block:: ruby

   property :port, Integer, default: 4000
   property :hostname, String, name_property: true

   action :create do
   
     directory "/etc/#{hostname}" do
       recursive true
     end
   
     file "/etc/#{hostname}/#{port}" do
       content 'some content'
     end
   end

Once built, the custom resource may be used in a recipe just like the any of the resources that are built into |chef|. The resource gets its name from the cookbook and from the file name in the ``/resources`` directory, with an underscore (``_``) separating them. For example, a cookbook named ``host`` with a custom resource in the ``/resources`` directory named ``porter.rb``. Use it in a recipe identically to the definition that it replaces:

.. code-block:: ruby

   host_porter node['hostname'] do
    port 4000
   end
   
   host_porter 'www1' do
     port 4001
   end

It can also support ``notifies``, ``subscribes``, ``not_if``, ``only_if``, etc correctly now that the definition is converted to a resource:

.. code-block:: ruby

   host_porter node['hostname'] do
    port 4000
    notifies :restart, 'service[httpd]'
   end
···
   host_porter 'www1' do
     port 4001
     only_if '{ node['hostname'] == 'foo.bar.com' }'
   end

