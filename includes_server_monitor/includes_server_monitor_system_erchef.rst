.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The status API provides a high-level view of the health of the system with a simple endpoint: ``_status``. This endpoint can be accessed using the following command:

.. code-block:: bash

   $ curl http://localhost:8000/_status

which will return something similar to:

.. code-block:: bash

   {
     "status":"pong",
     "upstreams":{"chef_solr":"pong","chef_sql":"pong",...},
   }

If any of the status values return ``FAIL``, this typically means the |chef server| is unavailable.
