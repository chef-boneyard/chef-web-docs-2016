.. This is an included how-to. 

.. To test standard error (stderr):

.. code-block:: ruby

   describe command('>&2 echo error') do
     its('stdout') { should eq '' }
     its('stderr') { should eq 'error\n' }
     its('exit_status') { should eq 0 }
   end
