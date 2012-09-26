.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |lwrp riak cluster| lightweight resource is used to join a |riak| node to a cluster. Other cluster members will be automatically discovered by searching on the ``riak.core.cluster_name`` attribute. This lightweight resource is used in the ``riak::autoconf`` recipe.
