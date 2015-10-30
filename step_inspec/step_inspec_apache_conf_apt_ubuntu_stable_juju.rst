.. This is an included how-to. 

.. To test if Ubuntu is updated to the latest stable Juju package:

.. code-block:: ruby

   describe apt('http://ppa.launchpad.net/juju/stable/ubuntu') do
     it { should exist }
     it { should be_enabled }
   end
