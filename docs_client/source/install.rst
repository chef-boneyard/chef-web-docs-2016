=====================================================
Install |chef|!
=====================================================

|chef| is installed and configured in three main phases: setting up the |chef server|, setting up a workstation, and then installing the |chef client| on each node that will be under management by |chef|:

* `Install the Chef server <http://docs.getchef.com/install_server.html>`_; the |chef server| may be `configured for high availability <http://docs.getchef.com/server_high_availability.html>`_, including high availablity `on-premises using DRBD <http://docs.getchef.com/install_server_ha_drbd.html>`_ or in the cloud `using Amazon Web Services <http://docs.getchef.com/install_server_ha_aws.html>`_
* :doc:`Set up a Workstation </install_workstation>`
* :doc:`Install the chef-client </install_bootstrap>`

|chef| also has additional features that can be enabled as part of the setup and configuration process. 

* The `Chef management console <http://docs.getchef.com/manage.html>`_ provides a web user interface for managing objects on the |chef server|.
* `Chef reporting <http://docs.getchef.com/reporting.html>`_ enables |chef client| run reporting data from within the |chef manage|.
* `Chef replication <http://docs.getchef.com/server_replication.html>`_ enables the synchronization of data from a primary |chef server| to one (or more) secondary servers.
* `Chef analytics <http://docs.getchef.com/analytics.html>`_ provides real-time visibility into what is happening on the |chef server|, including what's changing, who made those changes, and when they occurred
* `Chef push jobs <http://docs.getchef.com/push_jobs.html>`_ runs a job---an action or a command---against nodes independently of a |chef client| run
