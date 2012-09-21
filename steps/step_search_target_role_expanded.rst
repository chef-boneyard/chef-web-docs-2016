.. This is an included how-to. 

To search an expanded run list for all nodes with the role "load_balancer", enter the following (using |knife|):

.. code-block:: bash

   $ $ knife search node roles:load_balancer

or add the following (to a recipe):

.. code-block:: ruby

   search(:node, 'roles:load_balancer')

