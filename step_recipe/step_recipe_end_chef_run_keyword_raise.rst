.. This is an included how-to. 

In certain situations it may be useful to stop a |chef client| run entirely, such as when an unhandled exception occurs. For example, a |resource template| resource may not be able to find its source file. Or a user does not have permission to create a directory. The ``raise`` keyword can be useful for stopping the |chef client| run if an unhandled exception occurs. There are two approaches:

* Place the ``raise`` keyword in a recipe (instead of the ``return`` keyword) to raise an exception during the compile phase
* Place the ``raise`` keyword in a |resource ruby_block| resource to raise an exception during the execution phase

For example, using the ``raise`` keyword in a recipe to raise an exception during the compile phase may look something like this:

.. code-block:: ruby

   file '/tmp/name_of_file' do
     action :create
   end
   
   raise if node['platform'] == 'windows'
   
   package 'name_of_package' do
     action :install
   end

where ``node['platform'] == 'windows'`` is the condition set on the ``raise`` keyword. This condition is useful in a situation where the |windows| system does not have a package manager available, but the package (``name_of_package``) should be installed. Because the package should be installed, but cannot be, the |chef client| will exit the run with a fatal error and will provide a stack trace.
