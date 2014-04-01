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
       expect(chef_run).to ACTION_RESOURCE(NAME) 
     end
   
   end

where:

* ``'../spec_helper.rb'`` is the path to the |spec_helper rb| file, typically located at the root of the ``/spec`` folder that contains |chef spec| unit tests
* ``describe`` is the |rspec| method that defines the unit test; ``context`` is another |rspec| method that is used to group specific contexts, such as "do this on |windows|" and "do that on |linux|"
* ``cookbook_name::recipe_name`` identifies the cookbook and recipe that is being tested; this pattern typically appears many times within the same unit test
* ``let`` is a helper method in |rspec| that is used to kick off the |chef client| run, using ``(:chef_run)``
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



Examples
=====================================================
The |chef spec| repo on github has `an impressive collection of examples <https://github.com/sethvargo/chefspec/tree/master/examples>`_. For all of the core |chef client| resources, for guards, attributes, multiple actions, and so on. Take a look at those examples and use them as a starting point for building your own unit tests. Some of them are included below, for reference here.



file Resource
-----------------------------------------------------

**Recipe**

.. code-block:: ruby

   file '/tmp/explicit_action' do
     action :delete
   end

   file '/tmp/with_attributes' do
     user   'user'
     group  'group'
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


template Resource
-----------------------------------------------------

**Recipe**

.. code-block:: ruby

   template '/tmp/default_action'
   
   template '/tmp/explicit_action' do
     action :create
   end
   
   template '/tmp/with_attributes' do
     user   'user'
     group  'group'
     backup false
   end
   
   template 'specifying the identity attribute' do
     path '/tmp/identity_attribute'
   end

**Unit Test**

.. code-block:: ruby

   require 'chefspec'

   describe 'template::create' do
     let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }
   
     it 'creates a template with the default action' do
       expect(chef_run).to create_template('/tmp/default_action')
       expect(chef_run).to_not create_template('/tmp/not_default_action')
     end
   
     it 'creates a template with an explicit action' do
       expect(chef_run).to create_template('/tmp/explicit_action')
     end
   
     it 'creates a template with attributes' do
       expect(chef_run).to create_template('/tmp/with_attributes').with(
         user:   'user',
         group:  'group',
         backup: false,
       )
   
       expect(chef_run).to_not create_template('/tmp/with_attributes').with(
         user:   'bacon',
         group:  'fat',
         backup: true,
       )
     end
   
     it 'creates a template when specifying the identity attribute' do
       expect(chef_run).to create_template('/tmp/identity_attribute')
     end
   end


package Resource
-----------------------------------------------------

**Recipe**

.. code-block:: ruby

   package 'explicit_action' do
     action :remove
   end
   
   package 'with_attributes' do
     version '1.0.0'
     action  :remove
   end
   
   package 'specifying the identity attribute' do
     package_name 'identity_attribute'
     action       :remove
   end

**Unit Test**

.. code-block:: ruby

   require 'chefspec'
   
   describe 'package::remove' do
     let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }
   
     it 'removes a package with an explicit action' do
       expect(chef_run).to remove_package('explicit_action')
       expect(chef_run).to_not remove_package('not_explicit_action')
     end
   
     it 'removes a package with attributes' do
       expect(chef_run).to remove_package('with_attributes').with(version: '1.0.0')
       expect(chef_run).to_not remove_package('with_attributes').with(version: '1.2.3')
     end
   
     it 'removes a package when specifying the identity attribute' do
       expect(chef_run).to remove_package('identity_attribute')
     end
   end


chef_gem Resource
-----------------------------------------------------

**Recipe**

.. code-block:: ruby

   chef_gem 'default_action'
   
   chef_gem 'explicit_action' do
     action :install
   end
   
   chef_gem 'with_attributes' do
     version '1.0.0'
   end
   
   chef_gem 'specifying the identity attribute' do
     package_name 'identity_attribute'
   end

**Unit Test**

.. code-block:: ruby

   require 'chefspec'
  
   describe 'chef_gem::install' do
     let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }
   
     it 'installs a chef_gem with the default action' do
       expect(chef_run).to install_chef_gem('default_action')
       expect(chef_run).to_not install_chef_gem('not_default_action')
     end
   
     it 'installs a chef_gem with an explicit action' do
       expect(chef_run).to install_chef_gem('explicit_action')
     end
   
     it 'installs a chef_gem with attributes' do
       expect(chef_run).to install_chef_gem('with_attributes').with(version: '1.0.0')
       expect(chef_run).to_not install_chef_gem('with_attributes').with(version: '1.2.3')
     end
   
     it 'installs a chef_gem when specifying the identity attribute' do
       expect(chef_run).to install_chef_gem('identity_attribute')
     end
   end


directory Resource
-----------------------------------------------------

**Recipe**

.. code-block:: ruby

   directory '/tmp/default_action'
   
   directory '/tmp/explicit_action' do
     action :create
   end
   
   directory '/tmp/with_attributes' do
     user   'user'
     group  'group'
   end
   
   directory 'specifying the identity attribute' do
     path '/tmp/identity_attribute'
   end

**Unit Test**

.. code-block:: ruby

   require 'chefspec'
   
   describe 'directory::create' do
     let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }
   
     it 'creates a directory with the default action' do
       expect(chef_run).to create_directory('/tmp/default_action')
       expect(chef_run).to_not create_directory('/tmp/not_default_action')
     end
   
     it 'creates a directory with an explicit action' do
       expect(chef_run).to create_directory('/tmp/explicit_action')
     end
   
     it 'creates a directory with attributes' do
       expect(chef_run).to create_directory('/tmp/with_attributes').with(
         user:   'user',
         group:  'group',
       )
   
       expect(chef_run).to_not create_directory('/tmp/with_attributes').with(
         user:   'bacon',
         group:  'fat',
       )
     end
   
     it 'creates a directory when specifying the identity attribute' do
       expect(chef_run).to create_directory('/tmp/identity_attribute')
     end
   end


Guards
-----------------------------------------------------

**Recipe**

.. code-block:: ruby

   service 'true_guard' do
     action  :start
     only_if { 1 == 1 }
   end
   
   service 'false_guard' do
     action :start
     not_if { 1 == 1 }
   end
   
   service 'action_nothing_guard' do
     action :nothing
   end

**Unit Test**

.. code-block:: ruby

   require 'chefspec'
   
   describe 'guards::default' do
     let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }
   
     it 'includes resource that have guards that evalute to true' do
       expect(chef_run).to start_service('true_guard')
     end
   
     it 'excludes resources that have guards evaluated to false' do
       expect(chef_run).to_not start_service('false_guard')
     end
   
     it 'excludes resource that have action :nothing' do
       expect(chef_run).to_not start_service('action_nothing_guard')
     end
   end


include_recipe Method
-----------------------------------------------------

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


Multiple Actions
-----------------------------------------------------

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

For more information ...
=====================================================
For more information about |chef spec|:

* `ChefSpec Github Repo <https://github.com/sethvargo/chefspec>`_
* `RSpec Documentation <https://relishapp.com/rspec/rspec-core/docs/command-line>`_




