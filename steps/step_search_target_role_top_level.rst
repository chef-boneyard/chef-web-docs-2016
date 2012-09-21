.. This is an included how-to. 

To search a top-level run list for a role named "load_balancer", enter the following (from |knife|):

.. code-block:: bash

   $ knife search node role:load_balancer

or add the following (to a recipe):

.. code-block:: ruby

   search(:node, 'role:load_balancer')
  