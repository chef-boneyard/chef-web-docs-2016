.. This is an included how-to. 


To compare cookbook versions for multiple environments:

.. code-block:: bash

   $ knife environment compare development staging

to return something similar to:

.. code-block:: bash

                 development    staging
   apache        2.3.1          1.2.2
   windows       4.1.2          1.0.0
   postgresql    1.0.0          1.0.0