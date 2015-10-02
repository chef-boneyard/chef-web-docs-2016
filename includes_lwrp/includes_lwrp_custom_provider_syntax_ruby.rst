.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This section shows some of the common structural elements that appear in a lightweight provider that is built using custom |ruby| code. Remember:

* A lightweight provider tells the |chef client| how to complete a task
* The structure of a lightweight provider will vary, depending on the complexity of the tasks required to complete an action
* At its platform, a lightweight provider is just |ruby| code, which means that anything that can be done in |ruby| can be done in a lightweight provider

The basic syntax for a lightweight provider that is built using custom |ruby| code is as follows:

.. code-block:: ruby
   # To get notifications off of the LWRP correct, use_inline_resources
   # should always be declared in the provider.
   use_inline_resources

   # Correctly written LWRPs will support why-run, so this should be set
   # to true.
   def whyrun_supported?
     true
   end

   action :action_name do
     # Pure ruby that modifies the system, needs to be wrapped in a
     # converge_by block, which is then wrapped in an idempotency test.
     # This pattern ensures that:
     #  1.  update the resource and fire notifications correctly
     #  2.  not execute in why-run mode
     if stuff_needs_updating?
       converge_by("touch /tmp/foo") do
         FileUtils.touch("/tmp/foo")
       end
     end
     # Other resources can be used directly and will be idempotent, will
     # cause this resource to be updated (and fire notifications) if the
     # sub resource is updated, and correctly support why-run.
     file "/tmp/foo" do
       owner "root"
       group "root"
     end
   end

   ...

   def stuff_needs_updating?()
     # ruby tests to see if your resource needs updating
     # (e.g. is the checksum of /tmp/foo wrong?)
     true
   end

where:

* ``whyrun_supported?`` indicates whether a lightweight provider can be run in |whyrun| mode
* ``action`` is the code block that tells the |chef client| what to do when the ``:action_name`` is used in a recipe
* ``converge_by()`` is used to provide a ``'message'`` to be logged when the resource is updated and to correctly disable the codeblock when run in |whyrun| mode

Also, commonly used methods (but not shown in the previous example) are ``current_resource``, ``load_current_resource``, and ``new_resource``.

For example:

.. code-block:: ruby

   require 'chef/mixin/shell_out'
   include Chef::Mixin::ShellOut

   use_inline_resources

   def whyrun_supported?
     true
   end

   action :fix do
     if modes_differ?
       converge_by("fix #{new_resource.path} mode to #{new_resource.mode}, was #{current_resource.mode}") do
         # Contrived example to show using shell_out!, FileUtils.chown would be better practice.
         Chef::Log.debug "updating #{new_resource.path} to #{new_resource.mode} via shell_out!"
         shell_out!("chown #{new_resource.mode} #{new_resource.path}")

       end
     end
   end

   def modes_differ?
     current_resource.mode != new_resource.mode
   end

   def load_current_resource
     # create a current_resource with the same name as the new_resource
     @current_resource = Chef::Resource::MyResource.new(new_resource.name)
     # Some other current_resource properties may match the new_resource (e.g. For a package resource
     # the 'package_name' in the current_resource will be the same one the user requested in the
     # new_resource, file paths will be the same in both resources, etc)
     current_resource.path(new_resource.path)
     # Most other current_resource properites will be found by inspecting the system (e.g. Wwhat is
     # the current version of the installed package?  What are the existing file modes?)
     current_resource.mode(File.stat(new_resource.path).mode)
     # load_current_resource should return the current_resource by convention
     current_resource
   end
