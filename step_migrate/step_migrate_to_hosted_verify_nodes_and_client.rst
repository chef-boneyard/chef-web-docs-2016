.. This is an included how-to. 

Verify that the new |chef hosted| organization does not have any nodes and that just the validator client is present. Run the following |knife| commands:

.. code-block:: bash

   knife node list

and:

.. code-block:: bash

   knife client list

The only client that should be listed is the organization's validator client. No nodes should be listed.



