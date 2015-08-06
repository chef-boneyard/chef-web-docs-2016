.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


**Recipe**

.. code-block:: ruby

   file '/tmp/explicit_action' do
     action :delete
   end

   file '/tmp/with_attributes' do
     user 'user'
     group 'group'
     backup false
     action :delete
   end

   file 'specifying the identity attribute' do
     path   '/tmp/identity_attribute'
    action :delete
   end

**Unit Test**

.. code-block:: ruby

   require 'chefspec'

   describe 'file::delete' do
     let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }
   
     it 'deletes a file with an explicit action' do
       expect(chef_run).to delete_file('/tmp/explicit_action')
       expect(chef_run).to_not delete_file('/tmp/not_explicit_action')
     end
   
     it 'deletes a file with attributes' do
       expect(chef_run).to delete_file('/tmp/with_attributes').with(backup: false)
       expect(chef_run).to_not delete_file('/tmp/with_attributes').with(backup: true)
     end
   
     it 'deletes a file when specifying the identity attribute' do
       expect(chef_run).to delete_file('/tmp/identity_attribute')
     end
   end
