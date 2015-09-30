.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``converge_by`` method is a wrapper that is used to support |whyrun| mode and must wrap all pure ruby calls which update system state.  All core Chef resources internally use converge_by and support |whyrun| correctly, so they may be used without placing them in a |whyrun| block.  In order for the LWRP provider you are writing to be idempotent, converge_by blocks must be placed within an idempotency check.

.. code-block:: ruby

   converge_by("message")

where:

* ``converge_by()`` is added to an ``action`` block as a wrapper
* ``'message'`` is the message that the |chef client| returns when the resource runs

Some examples:

.. code-block:: ruby

   unless Dir.exist?(new_resource.path)
     converge_by("Create directory #{ new_resource.path }") do
       FileUtils.mkdir new_resource.path
     end
   end

.. code-block:: ruby

   if should_create_user?
     converge_by("Create user #{ new_resource.user }") do
       shell_out!("adduser #{ new_resource.user }")
     end
   end


.. code-block:: ruby

   if should_update_stuff?
     description = 'create dir #{app_root} and change owner to #{new_resource.owner}'
     converge_by(description) do
       FileUtils.mkdir app_root, :mode => new_resource.app_home_mode
       FileUtils.chown new_resource.owner, new_resource.owner, app_root
     end
   end

where the last example shows using a variable (``description``) as the ``'message'`` in the ``converge_by`` block.

An example of the ``converge_by`` method being used in the `directory <https://github.com/chef/chef/blob/master/lib/chef/provider/directory.rb>`_ provider, which is a platform resource:

.. code-block:: ruby

   def whyrun_supported?
     true
   end
   
   ...
   
   def action_create
     unless File.exist?(@new_resource.path)
       converge_by('create new directory #{@new_resource.path}') do 
         if @new_resource.recursive == true
           ::FileUtils.mkdir_p(@new_resource.path)
         else
           ::Dir.mkdir(@new_resource.path)
         end
         Chef::Log.info('#{@new_resource} created directory #{@new_resource.path}')
       end 
     end
     set_all_access_controls
     update_new_file_state
   end

.. note:: |whyrun| mode is already enabled for platform resources. When platform resources are used as part of the ``action`` block in a lightweight provider, only the ``whyrun_supported?`` is required to allow the |chef client| to run in |whyrun| mode.
