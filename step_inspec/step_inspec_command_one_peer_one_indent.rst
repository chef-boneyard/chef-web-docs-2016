.. This is an included how-to. 

.. To test for one peer and one indent:

.. code-block:: ruby

   describe command('sudo -i cat #{hba_config_file} | egrep 'peer|ident' | wc -l') do
     its('stdout') { should eq '(/^[2|1]/)' }
   end

   describe command('sudo -i cat #{hba_config_file} | egrep 'trust|password|crypt' | wc -l') do
     its('stdout') { should eq '(/^0/)' }
   end
