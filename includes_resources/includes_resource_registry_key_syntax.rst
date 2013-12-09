.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource registry_key| resource in a recipe is as follows:

.. code-block:: ruby

   registry_key "name" do
     attribute "value" # see attributes section below
     ...
     values [{
       :name => "name",
       :type => :string,
       :data => "data"
       },
       {
       :name => "name",
       :type => :string,
       :data => "data"
       },
       ...
       ]
     action :action # see actions section below
   end

where 

* ``registry_key`` tells the |chef client| to use the ``Chef::Provider::Windows::Registry`` provider during the |chef client| run
* ``name`` is the name of the resource block; when the ``key`` attribute is not specified as part of a recipe, ``name`` is also path to the location in which a registry key is created or from which a registry key is deleted
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``values`` is a hash that contains at least one registry key to be created or deleted. Each registry key in the hash is grouped by brackets in which the ``:name``, ``:type``, and ``:data`` values for that registry key are specified.
* |values resource registry_key types|
* ``:action`` is the step that the resource will ask the provider to take during the |chef client| run

The following is an example of how the |resource registry_key| resource can work when used in a recipe. In this example, a |windows| registry key named "System" will get a new value called "NewRegistryKeyValue" and a mulit-string value named "foo bar":

.. code-block:: ruby

   registry_key "HKEY_LOCAL_MACHINE\\...\\System" do
     values [{
       :name => "NewRegistryKeyValue",
       :type => :multi_string,
       :data => ['foo\0bar\0\0']
     }]
     action :create
   end

and the following example shows how multiple registry key entries can be configured using a single resource block with key values based on node attributes:

.. code-block:: ruby

   registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\name_of_registry_key' do
     values [{:name => 'key_name', :type => :string, :data => 'C:\Windows\System32\file_name.bmp'},
             {:name => 'key_name', :type => :string, :data => node['node_name']['attribute']['value']},
             {:name => 'key_name', :type => :string, :data => node['node_name']['attribute']['value']}
            ]
     action :create
   end 
