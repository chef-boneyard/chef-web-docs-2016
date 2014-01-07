.. This is an included how-to. 


To verify that an |chef api client| can authenticate to the 
|chef server| correctly, try getting a list of clients using ``-u`` and ``-k`` options to specify its name and private key:

.. code-block:: bash

   $ knife client list -u ORGNAME -k .chef/ORGNAME.pem

