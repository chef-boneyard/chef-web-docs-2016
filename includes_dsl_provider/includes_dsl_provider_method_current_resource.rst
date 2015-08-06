.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``current_resource`` method is used to represent a resource as it exists on the node at the beginning of the |chef client| run. In other words: what the resource is currently. The |chef client| compares the resource as it exists on the node to the resource that is created during the |chef client| run to determine what steps need to be taken to bring the resource into the desired state. This method is often used as an instance variable (``@current_resource``).

For example:

.. code-block:: ruby

   action :add do
     unless @current_resource.exists
       cmd = "#{appcmd} add app /site.name:\'#{@new_resource.app_name}\'"
       cmd << " /path:\'#{@new_resource.path}\'"
       cmd << " /applicationPool:\'#{@new_resource.application_pool}\'" if @new_resource.application_pool
       cmd << " /physicalPath:\'#{@new_resource.physical_path}\'" if @new_resource.physical_path
       Chef::Log.debug(cmd)
       shell_out!(cmd)
       Chef::Log.info('App created')
     else
       Chef::Log.debug('#{@new_resource} app already exists - nothing to do')
     end
   end

where the ``unless`` conditional statement checks to make sure the resource doesn't already exist on a node, and then runs a series of commands when it doesn't. If the resource already exists, the log entry would be ``Foo app already exists - nothing to do``.
