.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

As the queue depth increases it may take longer for updates posted to the |chef server| by each |chef client| to be added to the search indexes on the |chef server|. The depth of this queue should be monitored using the following command:

.. code-block:: bash

   $ cd /opt/opscode/embedded/service/opscode-expander/export PATH=$PATH:/opt/opscode/bin:/opt/opscode/embedded/bin bin/opscode-expanderctl queue-depth
