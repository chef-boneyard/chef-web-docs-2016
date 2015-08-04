.. This is an included how-to. 


The following example shows how to use the ``not_if`` condition to create a file based on a template and using the presence of an attribute value on the node to specify the condition:

.. code-block:: ruby

   template '/tmp/somefile' do
     mode 00644
     source 'somefile.erb'
     not_if { node[:some_value] }
   end
