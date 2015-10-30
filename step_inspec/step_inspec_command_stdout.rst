.. This is an included how-to. 

.. To test standard output (stdout):

.. code-block:: ruby

   describe command('echo hello') do
     its('stdout') { should eq 'hello\n' }
     its('stderr') { should eq '' }
     its('exit_status') { should eq 0 }
   end
