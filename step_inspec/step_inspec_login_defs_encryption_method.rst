.. This is an included how-to. 

.. To test the encryption method:

.. code-block:: ruby

   describe login_defs do
     its('ENCRYPT_METHOD') { should eq 'SHA512' }
   end
