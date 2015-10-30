.. This is an included how-to. 

.. To test parameters for bond0:

.. code-block:: ruby

   describe bond('bond0') do
     its('Bonding Mode') { should eq 'IEEE 802.3ad Dynamic link aggregation' }
     its('Transmit Hash Policy') { should eq 'layer3+4 (1)' }
     its('MII Status') { should eq 'up' }
     its('MII Polling Interval (ms)') { should eq '100' }
     its('Up Delay (ms)') { should eq '0' }
     its('Down Delay (ms)') { should eq '0' }
   end
