.. This is an included how-to. 

.. To disable a registry key:

Use a double-quoted string:

.. code-block:: ruby

   registry_key "HKEY_LOCAL_MACHINE\\path-to-key\\Policies\\System" do
     values [{
       :name => 'EnableLUA',
       :type => :dword,
       :data => 0
     }]
     action :create
   end

or a single-quoted string:

.. code-block:: ruby

   registry_key 'HKEY_LOCAL_MACHINE\path-to-key\Policies\System' do
     values [{
       :name => 'EnableLUA',
       :type => :dword,
       :data => 0
     }]
     action :create
   end
