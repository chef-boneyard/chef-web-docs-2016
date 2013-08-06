.. This is an included how-to. 

To search a top-level run list for a role named "load_balancer" use the |subcommand knife search| subcommand from the command line or the ``search`` method in a recipe. For example:

.. code-block:: bash

   $ knife search node role:load_balancer

and from within a recipe:

.. code-block:: ruby

   search(:node, 'role:load_balancer')
  