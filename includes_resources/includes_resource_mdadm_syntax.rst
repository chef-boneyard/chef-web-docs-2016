.. The contents of this file may be included in multiple topics (using the includes directive).
.. The contents of this file should be modified in a way that preserves its ability to appear in multiple topics.


A |resource mdadm| resource block manages |raid| devices in a |linux| environment using the |mdadm| utility:

.. code-block:: ruby

   mdadm '/dev/md0' do
     devices [ '/dev/sda', '/dev/sdb' ]
     level 1
     action [ :create, :assemble ]
   end

The full syntax for all of the properties that are available to the |resource mdadm| resource is:

.. code-block:: ruby

   mdadm 'name' do
     mdadm_defaults             TrueClass, FalseClass
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
* ``mdadm_defaults``, ``bitmap``, ``chunk``, ``devices``, ``exists``, ``level``, ``metadata``, ``provider``,  and ``raid_device`` are properties of this resource, with the |ruby| type shown. |see attributes|
