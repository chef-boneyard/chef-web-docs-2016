.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


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

