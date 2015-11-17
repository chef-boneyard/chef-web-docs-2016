.. This is an included how-to. 

.. To set the "(Default)" name of a registry key:

Use a double-quoted string:

.. code-block:: ruby

   registry_key 'Set (Default) value' do
     action :create
     key "HKLM\\Software\\Test\\Key\\Path"
     values [
       {:name => '', :type => :string, :data => 'test'},
     ]
   end

or a single-quoted string:

.. code-block:: ruby

   registry_key 'Set (Default) value' do
     action :create
     key 'HKLM\Software\Test\Key\Path'
     values [
       {:name => '', :type => :string, :data => 'test'},
     ]
   end

where ``:name => ''`` contains an empty string, which will set the name of the registry key to ``(Default)``.