.. This is an included how-to. 


The |resource package_windows| resource may specify a package at a remote location using the ``remote_file_attributes`` property. This uses the |resource remote_file| resource to download the contents at the specified URL and passes in a |ruby hash| that modifes the properties of the `remote_file resource <http://docs.chef.io/resource_remote_file/>`__.

For example:

.. code-block:: ruby

   windows_package '7zip' do
     source 'http://www.7-zip.org/a/7z938-x64.msi'
     remote_file_attributes ({
       :path => 'C:\\7zip.msi',
       :checksum => '7c8e873991c82ad9cfc123415254ea6101e9a645e12977dcd518979e50fdedf3'
     })
   end
