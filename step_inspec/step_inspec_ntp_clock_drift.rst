.. This is an included how-to. 

.. To test for clock drift against named servers:

.. code-block:: ruby

   describe ntp_conf do
     its('driftfile') { should eq '/var/lib/ntp/ntp.drift' }
     its('server') { should eq [
       0.ubuntu.pool.ntp.org,
       1.ubuntu.pool.ntp.org,
       2.ubuntu.pool.ntp.org
     ] }
   end
