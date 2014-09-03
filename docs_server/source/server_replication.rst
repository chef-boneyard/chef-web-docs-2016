.. THIS PAGE IS IDENTICAL TO docs.getchef.com/server_replication.html BY DESIGN
.. THIS PAGE IS LOCATED AT THE /server/ PATH.

=====================================================
Replication
=====================================================

.. placeholder|chef replication| provides a way to synchronize replicas of a |chef server| with a single, primary |chef server|.This processes uses pull-based synchronization that is initiated by each of the replica instances. Replication occurs on a per-organization basis. Each organization on the primary |chef server| must be configured for synchronization with replica instances of the |chef server|... image:: ../../images/chef_server_replication.png.. image:: ../../images/chef_server_replication_many.png|api chef server| Endpoints=====================================================The following |api chef server| endpoints support |chef replication|./organizations/ORG_NAME-----------------------------------------------------.. include:: ../../includes_api_chef_server/includes_api_chef_server_endpoint_org_name.rstGET+++++++++++++++++++++++++++++++++++++++++++++++++++++.. include:: ../../includes_api_chef_server/includes_api_chef_server_endpoint_org_name_get.rst