.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A daemon named |service ecsyncd| runs on each of the replica instances of the |chef server| and periodically polls the primary |chef server| via the ``updated_since`` endpoint in the |api chef server|. The |service ecsyncd| daemon requests a list of objects that have been updated since the last successful synchronization time. If there are updates, the |service ecsyncd| daemon then pulls down the updated data from the primary |chef server| to the replica. 

.. image:: ../../images/chef_server_replication_sequence.png
