.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


**Recipe**

.. code-block:: ruby

   include_recipe 'include_recipe::other'

**Unit Test**

.. code-block:: ruby

   require 'chefspec'

   describe 'include_recipe::default' do
     let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }
   
     it 'includes the `other` recipe' do
       expect(chef_run).to include_recipe('include_recipe::other')
     end
   
     it 'does not include the `not` recipe' do
       expect(chef_run).to_not include_recipe('include_recipe::not')
     end
   end
