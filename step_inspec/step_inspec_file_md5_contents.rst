.. This is an included how-to. 

.. To test the contents of a file for MD5 requirements:

.. code-block:: bash

   describe file(hba_config_file) do
     its('content') { should match '/local\s.*?all\s.*?all\s.*?md5/' }
     its('content') { should match '%r{/host\s.*?all\s.*?all\s.*?127.0.0.1\/32\s.*?md5/}' }
     its('content') { should match '%r{/host\s.*?all\s.*?all\s.*?::1\/128\s.*?md5/}' }
   end
