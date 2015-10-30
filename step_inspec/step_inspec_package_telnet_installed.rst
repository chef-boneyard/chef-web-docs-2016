.. This is an included how-to. 

.. To test if telnet is installed:

.. code-block:: ruby

   describe package('telnetd') do
     it { should_not be_installed }
   end
   
   describe inetd_conf do
     its('telnet') { should eq nil }
   end
