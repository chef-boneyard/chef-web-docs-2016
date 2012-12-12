.. This is an included how-to. 

.. To delete a registry key and all of its subkeys recursively:

.. code-block:: ruby

   registry "HKCU\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Themes" do
     recursive true
     action :delete_key
   end

.. note:: Be careful when using the ``:delete_key`` action with the ``recursive`` attribute. This will delete the registry key and all of its subkeys and all of the values associated with them. This cannot be undone by |chef|.