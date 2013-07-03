.. This is an included how-to. 


To launch a new Amazon EC2 instance with the "webserver" role, enter:

.. code-block:: bash

   $ knife ec2 server create -r "role[webserver]" -I ami-2d4aa444 --flavor m1.small -G www,default -x ubuntu -N server01