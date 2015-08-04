.. This is an included how-to. 


The following example shows how to use the ``only_if`` condition to create a file based on a template, and then use |ruby| to specify a condition:

.. code-block:: ruby

   template '/tmp/somefile' do
     mode '0644'
     source 'somefile.erb'
     only_if do ! File.exist?('/etc/passwd') end
   end
