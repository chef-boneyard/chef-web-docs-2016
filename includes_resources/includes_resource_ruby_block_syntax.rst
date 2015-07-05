.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A |resource ruby_block| resource block executes a block of arbitrary |ruby| code. For example, to reload the |client rb| file during the |chef client| run:

.. code-block:: ruby

   ruby_block 'reload_client_config' do
     block do
       Chef::Config.from_file("/etc/chef/client.rb")
     end
     action :run
   end

The full syntax for all of the attributes that are available to the |resource ruby_block| resource is:

.. code-block:: ruby

   ruby_block 'name' do
     block                      Block
     block_name                 String # defaults to 'name' if not specified
     notifies                   # see description
     provider                   Chef::Provider::RubyBlock
     subscribes                 # see description
     action                     Symbol # defaults to :run if not specified
   end

where 

* ``ruby_block`` is the resource
* ``name`` is the name of the resource block
* ``block`` is the block of |ruby| code to be executed
* ``:action`` identifies the steps the |chef client| will take to bring the node into the desired state
* ``block``, ``block_name``, and ``provider`` are attributes of this resource, with the |ruby| type shown. |see attributes|
