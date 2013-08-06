.. This is an included how-to. 

To search an expanded run list for all nodes with the role "load_balancer" use the |subcommand knife search| subcommand from the command line or the ``search`` method in a recipe. For example:

.. code-block:: bash

   $ knife search node roles:load_balancer

and from within a recipe:

.. code-block:: ruby

   search(:node, 'roles:load_balancer')

