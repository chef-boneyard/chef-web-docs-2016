.. This is an included how-to. 

The code in a file that is included in a recipe using a callback is evaluated exactly as if the code had been put in the recipe as a block. Files are searched relative to the current release.

To specify a file that contains code to be used as a block:

.. code-block:: ruby

   deploy '/deploy/dir/' do
     # ...
      
     before_migrate 'callbacks/do_this_before_migrate.rb'
   end
