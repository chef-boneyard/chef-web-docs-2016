.. This is an included how-to. 

A package that is installed with a specific version:

.. code-block:: ruby

   control_group 'audit name' do
     control 'mysql package' do
       it 'should be installed' do
         expect(package('mysql')).to be_installed.with_version('5.6')
       end
     end
   end
