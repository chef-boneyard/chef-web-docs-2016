.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

To set up the |push jobs| client:

#. Add the |cookbook push jobs| cookbook to the run-list for each of the nodes on which |push jobs| is to be configured.
#. Add the following default attributes on all nodes that are managed by |push jobs|:

   .. code-block:: javascript

      "push_jobs": {
        "package_url": "<package_url>",
        "package_checksum": "<checksum>"
      }

#. Run the |chef client| to configure |push jobs|
#. Verify that the |push jobs| client is running as a daemon or as a service:

   .. code-block:: bash

      $ knife node status node_name

   for a specific node and:

   .. code-block:: bash

      $ knife node status

   for all nodes.
