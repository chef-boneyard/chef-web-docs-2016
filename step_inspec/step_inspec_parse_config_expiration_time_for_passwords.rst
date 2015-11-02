.. This is an included how-to. 

.. To test the expiration time for new account passwords:

.. code-block:: ruby

   output = command('useradd -D').stdout

   describe parse_config(output) do
     its('INACTIVE') { should eq '35' }
   end
