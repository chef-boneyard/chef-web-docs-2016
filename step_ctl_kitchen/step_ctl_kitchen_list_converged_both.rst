.. This is an included how-to. 


To verify if both instances have been converged, run the following command:

.. code-block:: bash

   $ kitchen list

.. code-block:: bash

   Instance             Driver   Provisioner  Verifier  Transport  Last Action
   default-ubuntu-1404  Vagrant  ChefZero     Busser    Ssh        Converged
   default-centos-71    Vagrant  ChefZero     Busser    Ssh        Converged
