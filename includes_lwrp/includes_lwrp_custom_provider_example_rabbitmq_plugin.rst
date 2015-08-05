.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``rabbitmq_plugin`` lightweight provider (found in the `rabbitmq <https://github.com/opscode-cookbooks/rabbitmq>`_ cookbook maintained by |company_name|) is used to tell the |chef client| how to handle two actions (``:disable`` and ``:enable``) that are used to manage |rabbitmq| plugins. Using this lightweight resource in a recipe is simple:

.. code-block:: ruby

   rabbitmq_plugin 'my_plugin' do
     action :enable
   end

The lightweight provider then does most of the work:

.. code-block:: ruby

   action :enable do
     unless plugin_enabled?(new_resource.plugin)
       execute 'rabbitmq-plugins enable #{new_resource.plugin}' do
         Chef::Log.info 'Enabling RabbitMQ plugin '#{new_resource.plugin}'.'
         path plugins_bin_path(true)
         new_resource.updated_by_last_action(true)
       end
     end
   end
   
   def plugins_bin_path(return_array=false)
     path = ENV.fetch('PATH') + ':/usr/lib/rabbitmq/bin'
     return_array ? path.split(':') : path
   end
   
   def plugin_enabled?(name)
     cmdStr = "rabbitmq-plugins list -e '#{name}\\b'"
     cmd = Mixlib::ShellOut.new(cmdStr)
     cmd.environment['HOME'] = ENV.fetch('HOME', '/root')
     cmd.environment['PATH'] = plugins_bin_path
     cmd.run_command
     Chef::Log.debug 'rabbitmq_plugin_enabled?: #{cmdStr}'
     Chef::Log.debug 'rabbitmq_plugin_enabled?: #{cmd.stdout}'
     cmd.error!
     cmd.stdout =~ /\b#{name}\b/
   end
