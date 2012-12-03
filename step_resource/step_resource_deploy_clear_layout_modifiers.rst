.. This is an included how-to. 

Using the default attribute values that |chef| provides is the recommended baseline when working with recipes. Then, depending on what each node requires, these default values can be overridden with node-, role-, environment-, and cookbook-specific values. The |resource deploy| resource has four layout modifiers: ``create_dirs_before_symlink``, ``purge_before_symlink``, ``symlink_before_migrate``, and ``symlinks``. These are |ruby| hashes that behave as attributes of the |resource deploy| resource. When these layout modifiers are used in a recipe, they appear similar to the following:

.. code-block:: ruby

   deploy "name" do
     ...
     symlink_before_migrate       {"config/database.yml" => "config/database.yml"}
     create_dirs_before_symlink   %w{tmp public config}
     purge_before_symlink         %w{log tmp/pids public/system}
     symlinks                     { "system" => "public/system", 
                                    "pids" => "tmp/pids", 
                                    "log" => "log"
                                  }
     ...
   end

In some cases, it may be preferable to ensure that one (or more) of these layout modifiers do not pass symbolic linking information to a node during the |chef| run. Because each of these layout modifiers are a hash, the ``clear`` instance method can be used to clear out these values.

To clear the default values for a layout modifier:

.. code-block:: ruby

   deploy "name" do
     ...
     symlink_before_migrate.clear
     create_dirs_before_symlink.clear
     purge_before_symlink.clear
     symlinks.clear
     ...
   end








