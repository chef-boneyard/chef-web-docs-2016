.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource deploy| resource in a recipe is as follows:

.. code-block:: ruby

   deploy "name" do
     attribute "value"
     ...
     callback do
       # callback, including release_path or new_resource
     end
     ...
     purge_before_symlink
     create_dirs_before_symlink
     symlink
     action :action
   end

where

* ``deploy`` is the default way to use the |resource deploy| resource in a recipe, but could be either ``timestamped_deploy``, ``deploy_revision``, or ``deploy_branch``, depending on the recipe.
* ``"name"`` is the path to the location in which the deployment steps will occur
* ``attribute`` is zero (or more) the available attributes
* ``callback`` represents additional |ruby| code that is used to pass a block or to specify a file, and then provide additional information to |chef| at specific times during the deployment process
* ``purge_before_symlink``, ``create_dirs_before_symlink``, and ``symlink`` are attributes that are typically used to link configuration files, remove directories, create directories, or map files and directories during the deployment process
* ``:action`` is the step that the resource will ask the provider to take during the |chef| run

The following is an example of how the ``deploy_revision`` resource can work when used in a recipe. In this example, an application will be deployed to a folder named "/path/to/application":

.. code-block:: ruby

   deploy_revision "/path/to/application" do
     repo 'ssh://name-of-git-repo/repos/repo.git'
     migrate false
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
* The ``purge_before_symlink`` application layout is an array of paths that will be cleared before the ``symlinks`` attribute is run
* The ``create_dirs_before_symlink`` attribute is empty, which is different from the default
* The ``symlinks`` attribute is creating three symbolic links
* The ``before_restart`` callback is being used to add custom actions that will occur at the end of the deployment process, but before any services have been notified
* At the end, the recipe is using the ``notifies`` attribute---a common attribute available to all resources in |chef|---to alert two services (named "foo" and "bar") that they should restart.


