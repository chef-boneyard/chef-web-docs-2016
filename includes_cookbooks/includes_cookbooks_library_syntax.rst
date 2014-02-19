.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The basic syntax of a library::

   your_cookbook/libraries/your_example_library.rb
   # define a module to mix into Chef::Recipe::namespace
   module YourExampleLibrary
     def your_function()
       # ... do something useful  
     end
   end
   
   your_cookbook/recipes/default.rb
   # open the Chef::Recipe class and mix in the library module
   class Chef::Recipe::namespace
     include YourExampleLibrary
   end
    
   your_function()

.. note:: In the preceding example, the ``::namespace`` part of the ``Chef::Recipe::namespace`` syntax should only be used when a custom namespace has been added that extends the default libraries.

