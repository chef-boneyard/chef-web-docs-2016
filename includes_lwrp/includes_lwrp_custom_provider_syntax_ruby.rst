.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This section shows some of the common structural elements that appear in a lightweight provider that is built using custom |ruby| code. Remember:

* A lightweight provider tells the |chef client| how to complete a task
* The structure of a lightweight provider will vary, depending on the complexity of the tasks required to complete an action
* At its platform, a lightweight provider is just |ruby| code, which means that anything that can be done in |ruby| can be done in a lightweight provider

The basic syntax for a lightweight provider that is built using custom |ruby| code is as follows:

.. code-block:: ruby

   require /path/to/file

   include Include::Class::Here

   def whyrun_supported?
     true
   end

   action :action_name do
     converge_by('message') do
       condition test
         # some Ruby code
       end
       Chef::Log.log_type 'log_message'
     end
     new_resource.updated_by_last_action(true)
   end

   ...

   def test?()
     # some Ruby code
   end

where:

* ``require`` is a standard |ruby| method that allows a lightweight provider to require modules that are not located in the current cookbook, such as a file located in the ``chef/mixin`` directory
* ``include`` is a standard |ruby| method that allows a lightweight provider to include a class, such as ``Chef::Mixin::ShellOut`` or ``Windows::Helper``
* ``whyrun_supported?`` indicates whether a lightweight provider can be run in |whyrun| mode
* ``action`` is the code block that tells the |chef client| what to do when the ``:action_name`` is used in a recipe
* ``converge_by()`` is used to provide a ``'message'`` to be returned when a resource is run in |whyrun| mode
* ``condition`` is a |ruby| condition statement (``if``, ``else``, ``elseif``, ``unless``, ``while``, ``until``, ``case``, or ``for``)
* ``test`` is used to test for idempotence; ``test`` can be defined inline within the ``action`` block, defined as a method using a ``def`` block elsewhere in the lightweight provider (shown as ``def test()``), or defined using any other pattern that is available in |ruby|
* ``Chef::Log.log_type`` is used to tell the |chef client| to create a log entry, where ``log_type`` is one of the following types: ``debug``, ``info``, ``warn``, ``error``, or ``fatal``
* ``updated_by_last_action`` is used to notify that a node was updated successfully

Also, commonly used methods (but not shown in the previous example) are ``current_resource``, ``load_current_resource``, and ``new_resource``.

For example:

.. code-block:: ruby

   require 'chef/mixin/shell_out'
   require 'chef/mixin/language'
   include Chef::Mixin::ShellOut

   action :install do
     unless @pmgroup.exists
       run_command_with_systems_locale(
         :command => 'pacman --sync --noconfirm --noprogressbar#{expand_options(@new_resource.options)} #{name}'
       )
       new_resource.updated_by_last_action(true)
     end
   end

   action :remove do
     if @pmgroup.exists
       run_command_with_systems_locale(
         :command => 'pacman --remove --noconfirm --noprogressbar#{expand_options(@new_resource.options)} #{name}'
       )
       new_resource.updated_by_last_action(true)
     end
   end

   def load_current_resource
     @pmgroup = Chef::Resource::PacmanGroup.new(@new_resource.name)
     @pmgroup.package_name(@new_resource.package_name)
     Chef::Log.debug('Checking pacman for #{@new_resource.package_name}')
     p = shell_out('pacman -Qg #{@new_resource.package_name}')
     exists = p.stdout.include?(@new_resource.package_name)
     @pmgroup.exists(exists)
   end
