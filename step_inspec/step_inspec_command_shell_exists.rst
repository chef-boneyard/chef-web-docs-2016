.. This is an included how-to. 

.. To test if the command shell exists:

.. code-block:: ruby

   describe command('/bin/sh').exist? do
     it { should eq true }
   end
