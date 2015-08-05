.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the ``Chef::Log`` class in a lightweight provider to define log entries that are created during a |chef client| run. The syntax for a log message is as follows:

.. code-block:: ruby

   Chef::Log.log_type('message')

where

* ``log_type`` can be ``.debug``, ``.info``, ``.warn``, ``.error``, or ``.fatal`` 
* ``'message'`` is the message that is logged. For example: ``"#{@new_resource} added module '#{@new_resource.module_name}'"`` or ``'#{@new_resource} module already exists - nothing to do'``

For example, from the ``repository.rb`` provider in the |cookbook yum| cookbook:

.. code-block:: ruby

   action :add do
     unless ::File.exists?('/etc/yum.repos.d/#{new_resource.repo_name}.repo')
       Chef::Log.info 'Adding #{new_resource.repo_name} repository to /etc/yum.repos.d/#{new_resource.repo_name}.repo'
       repo_config
     end
   end

where the ``Chef::Log`` class appends ``.info`` as the log type. If the name of the repo was ``foo``, then the log message would be ``"Adding foo repository to /etc/yum.repos.d/foo.repo"``.

Another example shows two log entries, one that is triggered when a service is being restarted, and then another that is triggered after the service has been restarted:

.. code-block:: ruby

   action :restart do
     if @current_resource.running
       Chef::Log.debug 'Restarting #{new_resource.service_name}'
       shell_out!(restart_command)
       new_resource.updated_by_last_action(true)
       Chef::Log.debug 'Restarted #{new_resource.service_name}'
     end
   end
