.. This is an included how-to. 

.. To test an MD5 checksum:

.. code-block:: bash

   require 'digest'
   cpuinfo = file('/proc/cpuinfo').content
   
   md5sum = Digest::MD5.hexdigest(cpuinfo)
   
   describe file('/proc/cpuinfo') do
     its('md5sum') { should eq md5sum }
   end
