.. This is an included how-to. 

.. To disable a registry key:

.. code-block:: ruby

   registry_key "Set the default value" do
     action :create
     key "HKLM\\Software\\Test\\Key\\Path"
     values [
       {:name => '', :type => :string, :data => 'test'},
     ]
   end

where ``:name => ''`` contains the empty string that ensures the default value is set for the registry key.