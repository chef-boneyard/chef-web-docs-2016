.. This is an included how-to. 

.. To test limits:

.. code-block:: ruby

   describe limits_conf('path') do
     its('*') { should include ['soft', 'core', '0'], ['hard', 'rss', '10000'] }
     its('ftp') { should eq ['hard', 'nproc', '0'] }
   end
