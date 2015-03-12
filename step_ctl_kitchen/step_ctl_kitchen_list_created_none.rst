.. This is an included how-to. 


From the |chef repo|, run the following command to verify the list of |kitchen| instances:

.. code-block:: bash

   $ kitchen list

to return a list similar to:

.. code-block:: bash

   Instance             Driver   Provisioner  Last Action
   default-ubuntu-1204  Vagrant  ChefZero     <Not Created>
   default-centos-65    Vagrant  ChefZero     <Not Created>

There are two available default platforms---|ubuntu| 12.04 and |centos| 6.5---that are pre-configured to use the |vagrant| driver that is included with the |chef dk|.
