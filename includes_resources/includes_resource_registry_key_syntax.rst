.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource windows_registry| resource in a recipe is as follows:

.. code-block:: ruby

   registry_key "name" do
     attribute "value" # see attributes section below
     ...
     values [{
       :name => "name",
       :type => :string,
       :data => "data"
       }
       {
       :name => "name",
       :type => :string,
       :data => "data"
       }
       ...
       ]
     action :action
   end

where 

* ``registry_key`` tells |chef| to use the ``Windows::Registry`` provider during the |chef| run
* ``"name"`` is the path to the registry
* ``attribute`` is zero (or more) of the attributes available for this resource
* ``values`` is a hash that contains at least one registry key to be created or deleted. Each registry key in the hash is grouped by brackets in which the ``:name``, ``:type``, and ``:data`` values for that registry key are specified.
* |values resource windows_registry types|
* ``:action`` is the step that the resource will ask the provider to take during the |chef| run

The following is an example of how the |resource windows_registry| resource can work when used in a recipe. In this example, a |windows| registry key named "System" will get a new value called "NewRegistryKeyValue" and a mulit-string value named "foo bar":

.. code-block:: ruby

   registry "HKEY_LOCAL_MACHINE\...\System" do
     values [{
       :name => "NewRegistryKeyValue",
       :type => :multi_string,
       :value => foo\0bar\0\0
     }]
     action :create
   end

