.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

To set up the |pushy| client:

#. Add the ``push-jobs`` cookbook to the run-list for each of the nodes on which |pushy| is to be configured
#. Run the |chef client| to configure |pushy| for that node
#. Verify that the |pushy| client is running as a daemon or as a service:

   .. code-block:: bash

      $ knife node status node_name

   for a specific node and:

   .. code-block:: bash

      $ knife node status

   for all nodes.
