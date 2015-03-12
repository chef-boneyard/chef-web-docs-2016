.. This is an included how-to. 


From the |chef repo|, run the following command to verify the list of |kitchen| instances:

.. code-block:: bash

   $ kitchen list

to return a list similar to:

.. code-block:: bash

   Instance             Driver   Provisioner  Last Action
   default-ubuntu-1204  Vagrant  ChefZero     <Not Created>
   default-centos-65    Vagrant  ChefZero     Created
