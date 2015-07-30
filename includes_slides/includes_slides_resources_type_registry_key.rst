.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


A registry key that should be created:

.. code-block:: ruby
       
   registry_key 'HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\...\\System' do
     values [{
       :name => 'EnableLUA',
       :type => :dword,
       :data => 0
     }]
     action :create
   end
