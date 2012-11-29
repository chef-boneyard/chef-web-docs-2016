.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for the ``deploy`` resource is as follows:

.. code-block:: ruby

   resource "name" do
     attribute "value"
     ...
     callback do
       # callback, including release_path or new_resource
     end
     ...
     purge_before_symlink
     create_dirs_before_symlink
     symlink
     :action
   end

where

* ``resource`` is either ``timestamped_deploy`` or ``deploy_revision``, which tells |chef| to use the ``Deploy::TimestampedDeploy`` or ``Deploy::Revision`` providers during the |chef| run
* ``"name"`` is the path to the location in which the deployment steps will occur
* ``attribute`` is zero (or more) the available attributes.
* ``callback`` is additional |ruby| code that is used to pass a block or to specify a file, and then access information about the deployment
* ``custom_application_layout`` is used to link configuration files, remove directories, create directories, or map files and directories during the deployment process
* ``:action`` is the step that the resource will ask the provider to take during the |chef| run.

.. note:: The ``deploy`` resource is the most popular resource available in |chef|. It is also the most complex, having the most attributes, two providers (and where the recommended provider is not the default provider), plus the added complexity of being able to use callbacks and custom application layouts.

For example, the following will deploy to a folder named "/value/for/NAME" and will apply the attribute values specified.

.. code-block:: ruby

   NAME = '/value/for/NAME'
   deploy_revision NAME do
     deploy_to         NAME
     repo              'ssh://name-of-git-repo/repos/repo.git'
     migrate           false
     purge_before_symlink %w{one two folder/three}
     create_dirs_before_symlink []
     symlinks(                       
       "one"   => "one",
       "two"   => "two",
       "three" => "folder/three"
     )
     before_restart do
       # some Ruby code
     end
     notifies :restart, "service[foo]"
     notifies :restart, "service[bar]"
   end

* Because an action is not explicitly specified, |chef| will use the default action: ``:deploy``
* The ``purge_before_symlink`` application layout is an array of paths that will be cleared before the ``symlink`` application layout is run
* The ``create_dirs_before_symlink`` application layout is empty
* The ``symlinks`` application layout is creating three symbolic links
* The ``before_restart`` callback is being used to add custom actions that will occur at the end of the deployment process, but before any services are notified to restart
* At the end, the recipe is using the ``notifies`` notification to alert  two services named "foo" and "bar" that they should restart


