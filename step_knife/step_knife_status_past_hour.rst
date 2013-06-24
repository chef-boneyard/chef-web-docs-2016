.. This is an included how-to. 


To show only the status nodes on which |chef| ran within the past hour, enter:

.. code-block:: bash

   $ knife status --hide-healthy
   
to return something like:

.. code-block:: bash

   1 hour ago, i-256f884f, ubuntu 12.04, ec2-67-202-63-102.compute-1.amazonaws.com, 67.202.63.102, role[web].
   1 hour ago, i-a47823c9, ubuntu 10.04, ec2-174-129-127-206.compute-1.amazonaws.com, 184.129.143.111, role[lb].
