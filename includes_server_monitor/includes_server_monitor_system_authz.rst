.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The authz API provides a high-level view of the health of the |service authz| service with a simple endpoint: ``_ping``. This endpoint can be accessed using |curl| and |gnu wget|. For example:

.. code-block:: bash

   $ curl http://localhost:9463/_ping

This command typically prints a lot of information. Use |python| to use pretty-print output:

.. code-block:: bash

   $ curl http://localhost:9463/_ping | python -mjson.tool