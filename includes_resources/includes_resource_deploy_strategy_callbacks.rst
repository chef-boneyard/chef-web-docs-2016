.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

In-between each step in a deployment process, callbacks can be run using arbitrary |ruby| code, including recipes. All callbacks support embedded recipes given in a block, but each callback assumes a shell command (instead of a deploy hook filename) when given a string.

The following callback types are available:

* ``before_migrate``
* ``before_symlink``
* ``before_restart``
* ``after_restart``
* ``restart_command``

Each of these callback types can be used in one of three ways:

* To pass a block
* To specify a file
* To do neither; |chef| will look for a callback file named after one of the callback types (``before_migrate.rb``, for example) and if the file exists, to evaluate it as if it were a specified file.

Within a callback, there are two ways to get access to information about the deployment:

* ``release_path`` can be used to get the path to the current release.
* ``new_resource`` can be used to access the deploy resource, including environment variables that have been set there. (``new_resource`` is a preferred approach over using the ``@configuration`` variable.)

Both of these options must be available at the top-level within the callback, along with any assigned values that will be used later in the callback.

For example, to pass a block:

.. code-block:: ruby

   deploy_revision "/deploy/dir/" do
     # other attributes
     # ...
     
     before_migrate do
       # release_path is the path to the timestamp dir 
       # for the current release
       current_release = release_path
        
       # Create a local variable for the node so we'll have access to
       # the attributes
       deploy_node = node
       
       # A local variable with the deploy resource.
       deploy_resource = new_resource
        
       python do
         cwd current_release
         user "myappuser"
         code<<-PYCODE
           # Woah, callbacks in python!
           # ...
           # current_release, deploy_node, and deploy_resource are all available
           # within the deploy hook now.
         PYCODE
       end
     end
   end

Files are searched relative to the current release. The code in the file is evaluated exactly as if the code had been put in a block. To specify a file:

.. code-block:: ruby

   deploy "/deploy/dir/" do
     # ...
      
     before_migrate "callbacks/do_this_before_migrate.rb"
   end
