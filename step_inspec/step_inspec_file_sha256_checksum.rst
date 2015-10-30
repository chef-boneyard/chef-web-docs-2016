.. This is an included how-to. 

.. To test an SHA-256 checksum:

.. code-block:: bash

   require 'digest'
   cpuinfo = file('/proc/cpuinfo').content
   
   sha256sum = Digest::SHA256.hexdigest(cpuinfo)
   
   describe file('/proc/cpuinfo') do
     its('sha256sum') { should eq sha256sum }
   end
