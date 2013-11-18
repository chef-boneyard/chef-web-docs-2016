.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``/search`` endpoint allows nodes, roles, data bags, environments to be searched. This endpoint has the following methods: ``GET``.

.. note:: At the end of every |chef client| run, the node object is saved to the |chef server|. From the |chef server|, each node object is then added to the SOLR search index. This process is asynchronous. By default, node objects are committed to the search index every 60 seconds or per 1000 node objects, whichever occurs first.
