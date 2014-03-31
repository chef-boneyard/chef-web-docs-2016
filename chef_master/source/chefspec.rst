=====================================================
|chef spec|
=====================================================

|chef spec| is a unit testing framework that simulates the convergence of a node locally using |chef solo| or |chef zero|. |chef spec| is `an extension of Rspec <https://relishapp.com/rspec/rspec-core/docs/command-line>`_, which is a behavior-driven development (BDD) framework for |ruby|.

.. warning:: This topic details functionality that will be packaged with Chef in an upcoming release.

Unit Test Syntax
=====================================================
The following code block shows the basic structure of a |chef spec| unit test:

.. code-block:: ruby

   require '../spec_helper.rb'

   describe 'cookbook_name::recipe_name' do
     let (:chef_run) { ChefSpec::ChefRunner.new.converge('cookbook_name::recipe_name') }
     it 'should do something' do
       chef_run.should something 'cookbook_name::recipe_name'
     end
   
     context 'context' do
       let (:chef_run) do
         runner = ChefSpec::ChefRunner.new(
           'platform' => 'windows',
           'version' => 'version'
           )
         runner.node.set['cookbook_name']['attribute'] = 'value'
         ...
         runner.converge('cookbook_name::recipe_name')
       end
   
     it 'should do something' do
       expect(chef_run).to ACTION_RESOURCE(NAME) 
     end
   
   end

where:

* ``'../spec_helper.rb'`` is the path to the |spec_helper rb| file, typically located at the root of the ``/spec`` folder that contains |chef spec| unit tests
* ``cookbook_name::recipe_name`` identifies the cookbook and recipe that is being tested; this pattern typically appears many times within the same unit test
* ``let`` is a helper method in |rspec| that is used to kick off the |chef client| run, using ``(:chef_run)``
* ``describe`` is the |rspec| method that defines the unit test; ``context`` is another |rspec| method that is used to group specific contexts, such as "do this on |windows|" and "do that on |linux|"
* ``runner`` is a component of |chef spec| that defines the group of attributes to be unit tested, converges the node using the specified cookbook and recipe 
* ``it`` is an |rspec| helper method that puts context around each unit test, i.e. "it should do this", "it stops that", "it disables this service", and so on.
   
   The actual unit test is defined within the ``it`` block, often something like ``expect(chef_run).to action('object')``.
   
   ``expect().to`` is the assertion syntax in |rspec|.
   
   ``(chef_run)`` calls the ``Chef::Runner`` class to execute the mock |chef client| run.
   
   ``ACTION_RESOURCE(NAME)`` is the action from a resource, the resource itself, and the name of the resource (e.g. the same as "name" at the start of the ``resource "name" do`` block in the recipe). 

   For example:
   
   .. code-block:: ruby
   
      it 'uninstalls the splunk package' do
        expect(chef_run).to remove_package('splunk')
      end


**Example**

The following example starts with a recipe in the |cookbook chef_splunk| cookbook:

.. code-block:: ruby

   if node['splunk']['accept_license']
     execute "#{splunk_cmd} enable boot-start --accept-license --answer-yes" do
       not_if { ::File.exists?('/etc/init.d/splunk') }
     end
   end
   
   service 'splunk' do
     supports :status => true, :restart => true
     provider Chef::Provider::Service::Init
     action :start
   end

This recipe is used to start the ``splunk`` service, but only if the node itself is a licensed |splunk| node. This recipe has a corresponding |chef spec| unit test, which does several things: first testing to see that the recipe does test for the |splunk| license, and then restarting the ``splunk`` service, but only if the license is present:

.. code-block:: ruby

   require_relative '../spec_helper'
   
   describe 'chef-splunk::service' do
     let(:chef_run) do
       ChefSpec::Runner.new do |node|
         node.set['splunk']['accept_license'] = true
       end.converge(described_recipe)
     end
   
     it 'enables the service at boot and accepts the license' do
       expect(chef_run).to run_execute('/opt/splunkforwarder/bin/splunk enable boot-start --accept-license --answer-yes')
     end
   
     it 'starts the splunk service' do
       expect(chef_run).to start_service('splunk')
     end
   end

When ``enables the service at boot and accepts the license`` is true, then ``starts the splunk service`` is unit tested. When both are true, the recipe is behaving in the intended manner.

For more information ...
=====================================================
For more information about |chef spec|:

* `ChefSpec Github Repo <https://github.com/sethvargo/chefspec>`_
* `RSpec Documentation <https://relishapp.com/rspec/rspec-core/docs/command-line>`_




