.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the ``platform?`` method to ensure that certain actions are run for specific platform. The ``platform?`` method will return true if one of the listed parameters matches the ``node['platform']`` attribute that is detected by |ohai| during every |chef client| run.

The syntax for the ``platform?`` method is as follows:

.. code-block:: ruby

   platform?('parameter', 'parameter')

where:

* ``parameter`` is a comma-separated list, each specifying a platform, such as |redhat|, |centos|, or |fedora|
* ``platform?`` method is typically used with an ``if``, ``elseif``, or ``case`` statement that contains |ruby| code that is specific for the platform, if detected

For example:

.. code-block:: ruby

   if platform?('redhat', 'centos', 'fedora')
     # code for only redhat family systems.
   end

or:

.. code-block:: ruby

   if platform?('ubuntu')
     # code for only ubuntu systems
   end

or:

.. code-block:: ruby

   if platform?('ubuntu')
     # do ubuntu things
   end

or:

.. code-block:: ruby

   if platform?('freebsd', 'openbsd')
     # do bsd things
   end

.. future example: step_resource_ruby_block_if_statement_use_with_platform
.. future example: step_resource_ruby_block_run_specific_blocks_on_specific_platforms
