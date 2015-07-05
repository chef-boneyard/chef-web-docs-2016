.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A |resource mdadm| resource block manages |raid| devices in a |linux| environment using the |mdadm| utility:

.. code-block:: ruby

   mdadm '/dev/md0' do
     devices [ '/dev/sda', '/dev/sdb' ]
     level 1
     action [ :create, :assemble ]
   end

The full syntax for all of the attributes that are available to the |resource mdadm| resource is:

.. code-block:: ruby

   mdadm 'name' do
     bitmap                     String
     chunk                      Integer
     devices                    Array
     exists                     TrueClass, FalseClass
     level                      Integer
     metadata                   String
     notifies                   # see description
     provider                   Chef::Provider::Mdadm
     raid_device                String # defaults to 'name' if not specified
     subscribes                 # see description
     action                     Symbol # defaults to :create if not specified
   end

where 

* ``mdadm`` is the resource
* ``name`` is the name of the resource block
* ``:action`` identifies the steps the |chef client| will take to bring the node into the desired state
* ``bitmap``, ``chunk``, ``devices``, ``exists``, ``level``, ``metadata``, ``provider``,  and ``raid_device`` are attributes of this resource, with the |ruby| type shown. |see attributes|
