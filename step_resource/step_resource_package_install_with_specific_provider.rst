.. This is an included how-to. 

.. To install a package using a specific provider:

.. code-block:: ruby

   package 'tar' do
     action :install
     source '/tmp/tar-1.16.1-1.rpm'
     provider Chef::Provider::Package::Rpm
   end
