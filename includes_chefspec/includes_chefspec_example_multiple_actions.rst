.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


**Recipe**

.. code-block:: ruby

   service 'resource' do
     action :start
   end
   
   service 'resource' do
     action :nothing
   end

**Unit Test**

.. code-block:: ruby

   require 'chefspec'
   
   describe 'multiple_actions::sequential' do
     let(:chef_run) { ChefSpec::Runner.new(log_level: :fatal).converge(described_recipe) }
   
     it 'executes both actions' do
       expect(chef_run).to start_service('resource')
     end
   
     it 'does not match other actions' do
       expect(chef_run).to_not disable_service('resource')
     end
   end
