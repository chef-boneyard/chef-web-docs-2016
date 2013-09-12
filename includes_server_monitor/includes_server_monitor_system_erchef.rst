.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The status API provides a high-level view of the health of the system with a simple endpoint: ``_status``. This endpoint can be accessed using |curl| and |gnu wget|. For example:

.. code-block:: bash

   $ curl http://localhost:8000/_status

which will return something similar to:

.. code-block:: bash

   {
     "status":"pong",
     "upstreams":{"upstream_service":"pong","upstream_service":"fail",...},
   }

For each of the upstream services, ``pong`` or ``fail`` is returned. The possible upstream names are:

* ``chef_solr`` (for the |service solr| service)
* ``chef_sql`` (for the |service postgresql| service)
* ``chef_otto`` (for the |service couchdb| service)
* ``oc_chef_authz`` (for the |service authz| service)

If any of the status values return ``fail``, this typically means the |chef server| is unavailable for that service.
