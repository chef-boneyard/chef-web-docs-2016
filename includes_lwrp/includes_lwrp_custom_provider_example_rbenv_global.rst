.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``rbenv_global`` lightweight provider from the `chef-rbenv <https://github.com/fnichol/chef-rbenv>`_ cookbook shows a custom lightweight provider that sets the global version of |ruby|:

.. code-block:: ruby

   include Chef::Rbenv::ScriptHelpers
   
   action :create do
     if current_global_version != new_resource.rbenv_version
       command = %{rbenv global #{new_resource.rbenv_version}}
       rbenv_script '#{command} #{which_rbenv}' do
         code        command
         user        new_resource.user       if new_resource.user
         root_path   new_resource.root_path  if new_resource.root_path
         action      :nothing
       end.run_action(:run)
   
       new_resource.updated_by_last_action(true)
     else
       Chef::Log.debug('#{new_resource} is already set - nothing to do')
     end
   end
