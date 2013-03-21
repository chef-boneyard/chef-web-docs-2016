.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``%w`` syntax is a |ruby| shortcut for creating an array without requiring quotes and commas around the elements.

For example:

.. code-block:: ruby

   if %w{debian ubuntu}.include?(node["platform"])
     # do debian/ubuntu things with the Ruby array %w{} shortcut
   end 

.. future example: step_resource_package_use_whitespace_array
.. future example: step_resource_template_use_whitespace_array
