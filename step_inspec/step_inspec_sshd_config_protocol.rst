.. This is an included how-to. 

.. To test the Protocol setting:

.. code-block:: ruby

   describe sshd_config do
     its('Protocol') { should eq '2' }
   end
