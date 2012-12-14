.. This is an included how-to. 

.. To delete a registry key and all of its subkeys recursively:

.. code-block:: ruby

   registry_key "HKCU\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Themes" do
     recursive true
     action :delete_key
   end

.. note:: |note registry_key resource recursive|