=====================================================
First-run Resources
=====================================================

.. warning:: Use sparingly. Most resources are idempotent by construction and do not require the methods discussed on this page. Whenever possible, it is best to use an idempotent resource.

This page describes how to construct a resource that will perform an action on the first run of chef-client and do nothing on subsequent runs.

One case where using a first-run resource would be desired, for example, is to ensure idempotency when a command within an execute resource would move the state of the node away from the desired state if run a second time.

The ideal way to achieve idempotence when using a non-idempotent resource is to inspect the state of the node and condition the resource on that state using the ``not_if`` or ``only_if`` conditional execution resource attributes. However, it may be difficult or impossible to correctly inspect the state of the system, or you may never want to run the command again, even if the system's state is incorrect.

In order to create a resource that runs only on the first run of chef-client:

#. Set a node attribute after successfully completing the task
#. Test for the presence of that attribute within the resource.

The following code will run the command "command to run once" on the first run of the |chef client| and will not run it upon subsequent runs:

.. code-block:: ruby

   execute "some_command" do
     command "command to run once"
     notifies :create, "ruby_block[some_command_run_flag]", :immediately
     not_if { node.attribute?("some_command_complete") }
   end
   
   ruby_block "some_command_run_flag" do
     block do
       node.set['some_command_complete'] = true
       node.save
     end
     action :nothing
   end

This method has a couple of benefits over other possible approaches. Like any other attribute, the flag will be searchable:

.. code-block:: bash

   $ knife search node "some_command_complete:*"

All of the flags can be unset using knife:

.. code-block:: bash

   $ knife exec -E 'nodes.all { |n| n.delete("some_command_complete"); n.save() }'