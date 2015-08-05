.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This section shows some of the common structural elements that appear in a lightweight provider that is built in a way that leverages platform resources (such as |resource file|, |resource template|, or |resource package|). Remember:

* A lightweight provider tells the |chef client| how to complete a task
* The structure of a lightweight provider will vary, depending on the complexity of the tasks required to complete an action
* At its platform, a lightweight provider is just |ruby| code, which means that anything that can be done in |ruby| can be done in a lightweight provider

The basic syntax for a lightweight provider that is built to leverage platform resources is as follows:

.. code-block:: ruby

   def whyrun_supported?
     true
   end

   use_inline_resources

   action :action_name do
     condition test
       resource 'resource_name' do
         Chef::Log.log_type 'log_message'
         # a Chef recipe
         new_resource.updated_by_last_action(true)
       end
     end
   end

   def test()
     # some Ruby code
   end

where:

* ``whyrun_supported?`` indicates whether a lightweight provider can be run in |whyrun| mode
* ``use_inline_resources`` is used to tell the |chef client| to execute ``action`` blocks as part of a self-contained |chef client| run. Using this method ensures that the |chef client| can notify parent lightweight resources after embedded resources have finished processing
* ``action`` is the code block that tells the |chef client| what to do when the ``:action_name`` is used in a recipe
* ``condition`` is a |ruby| condition statement (``if``, ``else``, ``elseif``, ``unless``, ``while``, ``until``, ``case``, or ``for``)
* ``test`` is used to test for idempotence; ``test`` can be defined inline (within the ``action`` block), defined as a method using a definition block elsewhere in the lightweight provider (shown as ``def test()``), or defined using any other pattern that is available in |ruby|
* ``resource`` is a resource written as a recipe
* ``Chef::Log.log_type`` is used to tell the |chef client| to create a log entry, where ``log_type`` is one of the following types: ``debug``, ``info``, ``warn``, ``error``, or ``fatal``
* ``updated_by_last_action`` is used to notify that a node was updated successfully

For example:

.. code-block:: ruby

   def whyrun_supported?
     true
   end

   use_inline_resources

   action :delete do
     if user_exists?(new_resource.user)
       cmdStr = 'rabbitmqctl delete_user #{new_resource.user}'
       execute cmdStr do
         Chef::Log.debug 'rabbitmq_user_delete: #{cmdStr}'
         Chef::Log.info "Deleting RabbitMQ user '#{new_resource.user}'."
         new_resource.updated_by_last_action(true)
       end
     end
   end

   def user_exists?(name)
     cmdStr = "rabbitmqctl -q list_users |grep '^#{name}\\b'"
     cmd = Mixlib::ShellOut.new(cmdStr)
     cmd.environment['HOME'] = ENV.fetch('HOME', '/root')
     cmd.run_command
     Chef::Log.debug 'rabbitmq_user_exists?: #{cmdStr}'
     Chef::Log.debug 'rabbitmq_user_exists?: #{cmd.stdout}'
     begin
       cmd.error!
       true
     rescue
       false
     end
   end
