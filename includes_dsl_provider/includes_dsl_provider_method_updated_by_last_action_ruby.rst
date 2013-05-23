.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``updated_by_last_action`` method is used to notify a lightweight resource that a node was updated successfully. For example, the ``bluepill_service`` lightweight resource in the |cookbook bluepill| cookbook uses this method: 

.. code-block:: ruby

   action :load do
     unless @current_resource.running
       shell_out!(load_command)
       new_resource.updated_by_last_action(true)
     end
   end
   
   ...
   
   def load_command
     "#{node['bluepill']['bin']} load #{node['bluepill']['conf_dir']}/#{new_resource.service_name}.pill"
   end
   
   ...


