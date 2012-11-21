.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``platform_family?`` method can be used in a recipe to ensure that certain actions are run for specific platform family. The ``platform_family?`` method will return true if one of the listed parameters matches the ``node['platform_family']`` attribute that is detected by |ohai| during every |chef| run. The syntax for the ``platform_family?`` method is as follows:

.. code-block:: ruby

   platform_family?("parameter", "parameter")

where ``"parameter"`` is a comma-separated list, each specifying a platform family, such as |debian|, or |solaris|. The ``platform_family?`` method is typically used with an ``if``, ``elseif``, or ``case`` statement that contains |ruby| code that is specific for the platform family, if detected. For example:

.. code-block:: ruby

   if platform_family?("rhel")
     # do RHEL things
   end

or:

.. code-block:: ruby

   if platform_family?("debian", "rhel")
     # do things on debian and rhel families
   end


