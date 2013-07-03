.. This is an included how-to. 


To create a server:

.. code-block:: bash

   $ knife google server create www1 -m n1-standard-1 
       -I centos-6-v20130325 -Z us-central2-a -i ~/.ssh/id_rsa -x jdoe