.. This is an included how-to. 


To create a |chef client| that can access the |api chef server| as an administrator---sometimes referred to as an "API chef-client"---with the name "exampleorg" and save its private key to a file, enter:

.. code-block:: bash

   $ knife client create exampleorg -a -f "/etc/chef/client.pem"

