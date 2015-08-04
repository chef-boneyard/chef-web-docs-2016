.. This is an included how-to. 

.. To delete a registry key and all of its subkeys recursively:

.. code-block:: ruby

   registry_key 'HKCU\\SOFTWARE\\Policies\\path\\to\\key\\Themes' do
     recursive true
     action :delete_key
   end

.. note:: .. include:: ../../includes_notes/includes_notes_registry_key_resource_recursive.rst