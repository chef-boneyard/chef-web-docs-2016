.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A |resource ifconfig| resource block manages interfaces, such as a static IP address:

.. code-block:: ruby

   ifconfig '33.33.33.80' do
     device 'eth1'
   end

The full syntax for all of the attributes that are available to the |resource ifconfig| resource is:

.. code-block:: ruby

   ifconfig 'name' do
     bcast                      String
     bootproto                  String
     device                     String
     hwaddr                     String
     inet_addr                  String
     mask                       String
     metric                     String
     mtu                        String
     network                    String
     notifies                   # see description
     onboot                     String
     onparent                   String
     provider                   Chef::Provider::Ifconfig
     target                     String # defaults to 'name' if not specified
     action                     Symbol # defaults to :create if not specified
   end

where 

* ``ifconfig`` is the resource
* ``name`` is the name of the resource block
* ``:action`` identifies the steps the |chef client| will take to bring the node into the desired state
* ``bcast``, ``bootproto``, ``device``, ``hwaddr``, ``inet_addr``, ``mask``, ``metric``, ``mtu``, ``network``, ``onboot``, ``onparent``, ``provider``,  and ``target`` are attributes of this resource, with the |ruby| type shown. |see attributes|
