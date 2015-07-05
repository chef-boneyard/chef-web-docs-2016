.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A |resource route| resource block manages the system routing table in a |linux| environment:

.. code-block:: ruby

   route '10.0.1.10/32' do
     gateway '10.0.0.20'
     device 'eth1'
   end

The full syntax for all of the attributes that are available to the |resource route| resource is:

.. code-block:: ruby

   route 'name' do
     device                     String
     gateway                    String
     netmask                    String
     notifies                   # see description
     provider                   Chef::Provider::Route
     target                     String # defaults to 'name' if not specified
     action                     Symbol # defaults to :add if not specified
   end

where 

* ``route`` is the resource
* ``name`` is the name of the resource block
* ``:action`` identifies the steps the |chef client| will take to bring the node into the desired state
* ``device``, ``gateway``, ``netmask``, ``provider`` and ``target`` are attributes of this resource, with the |ruby| type shown. |see attributes|
