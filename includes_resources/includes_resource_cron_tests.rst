.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef spec| is integrated into the |chef client| cookbook authoring workflow via the |chef dk|. The following examples show recipes and corresponding unit tests. See :doc:`ChefSpec </chefspec>` for more information about how to set up unit testing for resources in your cookbooks.

**Recipes**

.. code-block:: ruby

   cron 'default_action'

.. code-block:: ruby

   cron 'explicit_action' do
     action :create
   end

.. code-block:: ruby
   
   cron 'with_attributes' do
     minute '0'
     hour   '20'
   end

**Unit Tests**

.. code-block:: ruby

   require 'chefspec'
   
   describe 'cron::create' do
     let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }
   
     it 'creates a cron with the default action' do
       expect(chef_run).to create_cron('default_action')
       expect(chef_run).to_not create_cron('not_default_action')
     end
   
     it 'creates a cron with an explicit action' do
       expect(chef_run).to create_cron('explicit_action')
     end
   
     it 'creates a cron with attributes' do
       expect(chef_run).to create_cron('with_attributes').with(minute: '0', hour: '20')
       expect(chef_run).to_not create_cron('with_attributes').with(minute: '10', hour: '30')
     end
   end
