.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A |resource execute| resource block typically executes a single command that is unique to the environment in which a recipe will run. Some |resource execute| resource commands are run by themselves, but often they are run in combination with other |chef| resources. For example, a single command:

.. code-block:: ruby

   %w{rover fido bubbers}.each do |pet_name|
     execute "feed_pet_#{pet_name}" do
       command "echo 'Feeding: #{pet_name}'; touch '/tmp/#{pet_name}'"
       not_if { ::File.exists?("/tmp/#{pet_name}")}
     end
   end

where

* ``%w{rover fido bubbers}`` is an array of pet names
* ``"echo 'Feeding: #{pet_name}'; touch '/tmp/#{pet_name}'"`` is the command that runs for each pet name

A command that is run in combination with another |chef| resource is often similar to the following, where the |resource template| resource creates a configuration file from a template, after which the command enables enable IP forwarding on the node:

.. code-block:: ruby

   execute 'forward_ipv4' do
     command 'echo > /proc/sys/net/ipv4/ip_forward'
     action :nothing
   end
   
   template '/etc/file_name.conf' do
     source 'routing/file_name.conf.erb'
     notifies :run, 'execute[forward_ipv4]', :delayed
   end

where

* ``'forward_ipv4'`` specifies the name of the |resource execute| block that is referenced later by the ``notifies`` in the |resource template| resource block
* ``'echo > /proc/.../ipv4/ip_forward'`` specifies the command that is run after the |resource execute| resource block is notified

The full syntax for all of the attributes that are available to the |resource execute| resource is:

.. code-block:: ruby

   execute 'name' do
     command                    String, Array
     creates                    String
     cwd                        String
     environment                Hash
     group                      String, Integer
     path                       Array # do not use
     provider                   Chef::Provider::Execute
     returns                    Integer, Array
     sensitive                  TrueClass, FalseClass
     timeout                    Integer, Float
     user                       String, Integer
     umask                      String, Integer
     action                     Symbol
   end

where 

* ``execute`` is the resource
* ``name`` is the name of the resource block
* ``command`` is the command to be run
* ``:action`` identifies the steps the |chef client| will take to bring the node into the desired state
* ``atomic_update``, ``backup``, ``cookbook``, ``force_unlink``, ``group``, ``helper``, ``helpers``, ``inherits``, ``local``, ``manage_symlink_source``, ``mode``, ``owner``, ``path``, ``provider``, ``rights``, ``sensitive``, ``source``, ``variables``, and ``verify`` are attributes of this resource, with example values shown. |see attributes|
