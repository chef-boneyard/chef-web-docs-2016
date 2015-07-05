.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A |resource group| resource block manages groups on a node:

.. code-block:: ruby

   group 'www-data' do
     action :modify
     members 'maintenance'
     append true
   end

The full syntax for all of the attributes that are available to the |resource group| resource is:

.. code-block:: ruby

   group 'name' do
     append                     TrueClass, FalseClass
     excluded_members           Array
     gid                        String, Integer
     group_name                 String # defaults to 'name' if not specified
     members                    Array
     non_unique                 TrueClass, FalseClass
     notifies                   # see description
     provider                   Chef::Provider::Group
     subscribes                 # see description
     system                     TrueClass, FalseClass
     action                     Symbol # defaults to :create if not specified
   end

where 

* ``group`` is the resource
* ``name`` is the name of the resource block
* ``:action`` identifies the steps the |chef client| will take to bring the node into the desired state
* ``append``, ``excluded_members``, ``gid``, ``group_name``, ``members``, ``non_unique``, ``provider``, and ``system`` are attributes of this resource, with the |ruby| type shown. |see attributes|
