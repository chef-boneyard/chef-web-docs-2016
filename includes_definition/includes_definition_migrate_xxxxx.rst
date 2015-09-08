.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following examples show a definition, the same definition rewritten as a custom resource, and then rewritten again to use a common resource property:

Definition:

The following definition processes unique hostnames and ports, passed on as parameters:
 		 
.. code-block:: ruby
 		 
   define :host_porter, :port => 4000, :hostname => nil do
     params[:hostname] ||= params[:name]

     directory '/etc/#{params[:hostname]}' do
       recursive true
     end

     file '/etc/#{params[:hostname]}/#{params[:port]}' do
       content 'some content'
     end
   end

Custom resource:

The definition is improved by rewriting it as a custom resource:

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

Once built, the custom resource may be used in a recipe just like the any of the resources that are built into |chef|. The resource gets its name from the cookbook and from the file name in the ``/resources`` directory, with an underscore (``_``) separating them. For example, a cookbook named ``host`` with a custom resource in the ``/resources`` directory named ``porter.rb``. Use it in a recipe like this:

.. code-block:: ruby

   host_porter node['hostname'] do
     port 4000
   end

or:

.. code-block:: ruby

   host_porter 'www1' do
     port 4001
   end


Common resource properties:


This updated custom resource now supports common resource properties like ``notifies``, ``subscribes``, ``not_if``, and ``only_if``. For example:

.. code-block:: ruby

   host_porter 'www1' do
     port 4001
     only_if '{ node['hostname'] == 'foo.bar.com' }'
   end



