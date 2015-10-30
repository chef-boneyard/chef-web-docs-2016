.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

An ``interface`` |inspec resource| block declares network interface properties to be tested:

.. code-block:: ruby

   describe interface do
     it { should be_up }
     its('speed') { should eq 1000 }
     its('name') { should eq eth0 }
   end
