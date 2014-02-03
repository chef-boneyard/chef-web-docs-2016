.. This is an included how-to. 


The ``return`` keyword can be used to stop processing a recipe based on a condition, but continue processing the |chef client| run. For example:

.. code-block:: ruby

   file '/tmp/name_of_file' do
     action :create
   end
   
   return if node['platform'] == 'windows'
   
   package 'name_of_package' do
     action :install
   end

where ``node['platform'] == 'windows'`` is the condition set on the ``return`` keyword. When the condition is met, stop processing the recipe. This approach is useful when there is no need to continue processing, such as when a package cannot be installed and. In this situation, it's OK for a recipe to stop processing.
