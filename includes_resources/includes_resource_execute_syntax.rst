.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource execute| resource in a recipe is as follows:

.. code-block:: ruby

   execute "name" do
     attribute "value" # see attributes section below
     ...
     action :action
   end

where 

* ``execute`` tells |chef| to use the ``Chef::Provider::Execute`` provider during the |chef| run
* ``"name"`` is the name of the command that will be run
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` is the step that the resource will ask the provider to take during the |chef| run

The following is an example of how the |resource execute| resource can work when used in a recipe. In this example, a whitespace array is used to identify the names of the pets that will then be fed (by the command that is run):

.. code-block:: ruby

   %w{rover fido bubbers}.each do |pet_name|
     execute "feed_pet_#{pet_name}" do
       command "echo 'Feeding: #{pet_name}'; touch '/tmp/#{pet_name}'"
       not_if { ::File.exists?("/tmp/#{pet_name}")}
     end
   end