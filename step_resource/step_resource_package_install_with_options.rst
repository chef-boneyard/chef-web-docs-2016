.. This is an included how-to. 

.. To install a package with options:

.. code-block:: ruby

   package 'debian-archive-keyring' do
     action :install
     options '--force-yes'
   end
