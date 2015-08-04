.. This is an included how-to. 

Use an attribute to specify a package that is located at a URL:

.. code-block:: ruby

   default['tool']['url'] = 'http://downloads.sourceforge.net/sevenzip/7z920-x64.msi'

Use the ``source`` attribute in a recipe to reference the attribute (and download the package from the specified URL):

   windows_package '7-Zip 9.20 (x64 version)' do
     source node['tool']['url']
     action :install
     not_if { File.exist?(node['tool']['file']) }
     not_if { reboot_pending? }
   end
