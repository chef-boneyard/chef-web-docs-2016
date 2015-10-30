.. This is an included how-to. 

.. To test for a command that should not exist:

.. code-block:: ruby

   describe command('this is not existing').exist? do
     it { should eq false }
   end
