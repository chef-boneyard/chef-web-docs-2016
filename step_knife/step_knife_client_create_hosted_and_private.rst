.. This is an included how-to. 


When running the ``create`` argument on |chef server oec|, be sure to omit the ``-a`` option:

.. code-block:: bash

   $ knife client create exampleorg -f "/etc/chef/client.pem"