.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A recipe can define specific behaviors for specific |windows| platform versions. To enable a series of helper methods that can be used to determine the platform version, add the following to the recipe:

.. code-block:: ruby

   require 'chef/win32/version'

and then declare a variable using the ``Chef::ReservedNames::Win32::Version`` class. For example:

.. code-block:: ruby

   windows_version = Chef::ReservedNames::Win32::Version.new

after which the variable can be used to define specific behaviors for specific |windows| platform versions. For example:

.. code-block:: ruby

   if windows_version.helper_name?
     # Ruby code goes here, such as
     resource_name do
       # resource block
     end

   elsif windows_version.helper_name?
     # Ruby code goes here
     resource_name do
       # resource block for something else
     end

   else windows_version.helper_name?
     # Ruby code goes here, such as
     log 'log entry' do
       level :level
     end
   
   end

