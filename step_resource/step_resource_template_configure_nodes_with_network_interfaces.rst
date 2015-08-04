.. This is an included how-to. 


The following example shows how to configure network interfaces on multiple |ubuntu| nodes, starting with putting ``/etc/network/interfaces`` under the management of the |chef client| by using the |resource template| resource:

.. code-block:: ruby

   template '/etc/network/interfaces' do
     action :create
     source 'interfaces.erb'
   end

The copy the file at ``/etc/network/interfaces`` into the ``/templates/default`` directory; name that file ``interfaces.erb``. And then from there, data can be rendered into that template. Update the resource:

.. code-block:: ruby

   template '/etc/network/interfaces' do
     action :create
     source 'interfaces.erb'
     variables()
   end
