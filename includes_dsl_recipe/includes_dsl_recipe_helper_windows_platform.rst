.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |dsl recipe| provides support for verifying the specific platform in a |windows| environment by creating a variable in a recipe based off the ``Chef::ReservedNames::Win32::Version`` class, and then associating that variable with a handler specific the |windows| platform. Add the following to the recipe:

.. code-block:: ruby

   require 'chef/win32/version'

and then declare a variable. For example:

.. code-block:: ruby

   windows_version = Chef::ReservedNames::Win32::Version.new

after which the variable can be used to define specific behaviors in a recipe. For example:

.. code-block:: ruby

   if (windows_version.handler_name?)
     # Ruby code goes here, such as
     resource_name do
       # resource block
     end

   elseif (windows_version.handler_name?)
     # Ruby code goes here
     resource_name do
       # resource block for something else
     end

   else (windows_version.handler_name?)
     # Ruby code goes here, such as
     log 'log entry' do
       level :level
     end
   
   end

