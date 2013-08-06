.. This is an included how-to. 

To see the available keys for a node, enter the following (for a node named "staging"):

.. code-block:: bash

   $ knife node show staging -Fj | less
   
to return a full |json| description of the node and to view the available keys with which any search query can be based. 
