.. This is an included how-to. 


From the |chef repo|, run the following command to verify the list of |kitchen| instances:

.. code-block:: bash

   $ kitchen list

to return a list similar to:

.. code-block:: bash

   Instance             Driver   Provisioner  Verifier  Transport  Last Action
   default-ubuntu-1404  Vagrant  ChefZero     Busser    Ssh        <Not Created>
   default-centos-71    Vagrant  ChefZero     Busser    Ssh        Created
