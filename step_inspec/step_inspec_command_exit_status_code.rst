.. This is an included how-to. 

.. To test an exit status code:

.. code-block:: ruby

   describe command('exit 123') do
     its('stdout') { should eq '' }
     its('stderr') { should eq '' }
     its('exit_status') { should eq 123 }
   end
