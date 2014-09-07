.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

AWS is a supported high availability configuration option for the |chef server|. 

.. image:: ../../images/chef_server_ha_aws.png

Front-end machines are scaled xxxxx.

Back-end machines are scaled xxxxx. Failover is achieved using:

* xxxxx
* xxxxx
* xxxxx

When the primary |chef server| in the cluster fails, xxxxx. At this point, the backup server will begin transitioning to the primary state by:

#. xxxxx
#. xxxxx
#. xxxxx

For more information about |amazon ebs|, see http://aws.amazon.com/ebs/.
