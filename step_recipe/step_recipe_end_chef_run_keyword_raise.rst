.. This is an included how-to. 

In certain situations it may be useful to stop a |chef client| run entirely by using an unhandled exception. The ``raise`` keyword can be used to stop a |chef client| run in both the compile and execute phases.

Use the ``raise`` keyword in a recipe---but outside of any resource blocks---to trigger an unhandled exception during the compile phase. For example:

.. code-block:: ruby

   file '/tmp/name_of_file' do
     action :create
   end
   
   raise if node['platform'] == 'windows'
   
   package 'name_of_package' do
     action :install
   end

where ``node['platform'] == 'windows'`` is the condition that will trigger the unhandled exception.

Use the ``raise`` keyword in the |resource ruby_block| resource to trigger an unhandled exception during the execute phase. For example:

.. code-block:: ruby

   ruby_block "name" do
     block do
       # Ruby code with a condition, e.g. if ::File.exist?(::File.join(path, "/tmp"))
       raise "message"  # e.g. "Ordering issue with file path, expected foo"
     end
   end

