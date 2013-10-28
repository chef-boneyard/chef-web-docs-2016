.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

.. This topic is NOT the same as the LWRP resource topic; keep separate.

A resource can also be defined in ``/libraries`` directory. Some advantages of this approach include more control over how resources behave in the provider, the ability to control the name of the resource directly, and more options available for writing tests. The resources and providers for a library resource, similar to lightweight resources (defined in the ``/resources`` and ``/providers`` folders) typically have a separate file for the resource and the provider, but this is not requirement. The main disadvantage of this approach is that resources defined in the ``/libraries`` directory are not able to leverage the |dsl recipe|. That said, a resource that is defined in the ``/libraries`` directory may leverage core |chef client| resources by using the following syntax:

.. code-block:: ruby

   Chef::Resource::name_of_resource.new("name", run_context)

or:

.. code-block:: ruby

   Chef::Resource::name_of_resource.new(:action)

For example, the following definition leverages the |resource directory| resource to create a new directory, and then evaluate that within the context of the custom resource:

.. code-block:: ruby

   def env_dir
     return @env_dir unless @env_dir.nil?
     @env_dir = Chef::Resource::Directory.new(::File.join(sv_dir_name, 'env'), run_context)
     @env_dir.owner(new_resource.owner)
     @env_dir.group(new_resource.group)
     @env_dir.mode(00755)
     @env_dir
   end

The following definition uses the |resource template| resource for |debian|-specific cases, but then the |resource link| resource for everything else:

.. code-block:: ruby

   def lsb_init
     return @lsb_init unless @lsb_init.nil?
     initfile = ::File.join(new_resource.lsb_init_dir, new_resource.service_name)
     if node['platform'] == 'debian'
       ::File.unlink(initfile) if ::File.symlink?(initfile)
       @lsb_init = Chef::Resource::Template.new(initfile, run_context)
       @lsb_init.owner('root')
       @lsb_init.group('root')
       @lsb_init.mode(00755)
       @lsb_init.cookbook('runit')
       @lsb_init.source('init.d.erb')
       @lsb_init.variables(:name => new_resource.service_name)
     else
       @lsb_init = Chef::Resource::Link.new(initfile, run_context)
       @lsb_init.to(new_resource.sv_bin)
     end
     @lsb_init
   end

The following definition leverages the |resource log| resource:

.. code-block:: ruby

   def action_grant
     begin
       grant_statement = "GRANT #{@new_resource.privileges.join(', ')} ON DATABASE \"#{@new_resource.database_name}\" TO \"#{@new_resource.username}\""
       Chef::Log.info("#{@new_resource}: granting access with statement [#{grant_statement}]")
       db(@new_resource.database_name).query(grant_statement)
       @new_resource.updated_by_last_action(true)
     ensure
       close
     end
   end

Otherwise, a resource defined in the ``/libraries`` directory is done using |ruby|, is added to recipes as if it were any other resource, and is processed by the |chef client| in the same way as any other resource. See the ``/libraries`` directory in the `database <https://github.com/opscode-cookbooks/database>`_ and `runit <https://github.com/opscode-cookbooks/runit>`_ cookbooks for complete examples of how to use this approach when defining a resource.
