.. This is an included how-to. 


The following example shows how to use the ``not_if`` condition to create a file based on a template and then |ruby| code to specify the condition:

.. code-block:: ruby

   template '/tmp/somefile' do
     mode '0644'
     source 'somefile.erb'
     not_if do
       File.exist?('/etc/passwd')
     end
   end
