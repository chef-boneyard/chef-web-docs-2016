.. This is an included how-to. 

Using the ``return`` keyword and a condition is typically the most direct approach to stopping a |chef client| run. When the condition is met, stop the run. When the condition is not met, allow the run to continue. The following example shows how the ``return`` keyword can be used to set a condition that, if met, will stop a |chef client| run:

.. code-block:: ruby

   file '/tmp/name_of_file' do
     action :create
   end
   
   return if node['platform'] == 'windows'
   
   package 'name_of_package' do
     action :install
   end

where ``node['platform'] == 'windows'`` is the condition set on the ``return`` keyword. This condition is useful in a situation where a |windows| system cannot install the package named ``name_of_package``. In a situation where this condition is met, there is no need for the recipe to continue and consequently it is OK for the |chef client| run to be stopped.
