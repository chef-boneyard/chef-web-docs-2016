.. This is an included how-to. 


To launch a new |rackspace| instance with the "webserver" role, enter:

.. code-block:: bash

   $ knife rackspace server create -r 'role[webserver]' --server-name server01 --node-name server01 --image 49 --flavor 2
