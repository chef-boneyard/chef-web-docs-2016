.. This is an included how-to. 


To launch a new Amazon EC2 instance with multiple roles, enter:

.. code-block:: bash

   $ knife ec2 server create -r "role[base],role[webserver]" -I ami-2d4aa444 -G www,default -x ubuntu --node-name server01