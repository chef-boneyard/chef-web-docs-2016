=====================================================
High Availability
=====================================================

.. include:: ../../includes_server_ha/includes_server_ha.rst

For |chef server| 12, the following high availability configurations are supported:

* DRBD
* AWS

DRBD
=====================================================
.. include:: ../../includes_server_ha/includes_server_ha_drbd.rst

Graceful Transitions
-----------------------------------------------------
.. include:: ../../includes_server_ha/includes_server_ha_graceful_transitions.rst

Split Brains
-----------------------------------------------------
.. include:: ../../includes_server_ha/includes_server_ha_drbd_split_brain.rst

Custom Handlers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_ha/includes_server_ha_drbd_handlers.rst

Assumptions
-----------------------------------------------------
.. include:: ../../includes_server_ha/includes_server_ha_drbd_assumptions.rst

Failure Scenarios
-----------------------------------------------------
.. include:: ../../includes_server_ha/includes_server_ha_drbd_scenario.rst

Scenarios 1 and 2
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_ha/includes_server_ha_drbd_scenario_1and2.rst

Scenario 3
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_ha/includes_server_ha_drbd_scenario_3.rst

Scenario 4
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_ha/includes_server_ha_drbd_scenario_4.rst

Scenario 5
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_ha/includes_server_ha_drbd_scenario_5.rst

AWS
=====================================================
.. include:: ../../includes_server_ha/includes_server_ha_aws.rst

Configuration
-----------------------------------------------------
.. This is really an "install/setup" scenario and should be moved at some point, this section being replaced by similar content to what exists for DRBD.

To configure AWS for high availability, first create machines in AWS. Two back-end machines are required. Create as many front-end machine as required.

#. Create an EBS volume. Attach it to the primary back-end machine. (The rest of these instructions occur on the primary back-end machine.)
#. Install the |chef server|.
#. Install the chef-ha package.
#. Run the following command:

   .. code-block:: bash
      
      $ mkdir /etc/opscode

#. Create a file named ``chef-server.rb`` and add the following settings and appy the appropriate values for ``aws_access_key_id``, ``aws_secret_access_key``, and ``ebs_volume_id``:

   .. code-block:: ruby
      
	  topology "ha"
	  ha['provider'] = 'aws'
	  ha['aws_access_key_id'] = 'access_key_identifier'
	  ha['aws_secret_access_key'] = 'secret_access_key'
	  ha['ebs_volume_id'] = 'vol-volume_identifier'

#. Run the following series of commands:

   .. code-block:: bash
      
      $ sudo apt-get install lvm2

   then:

   .. code-block:: bash
      
      $ sudo pvcreate /dev/xvdf

   then:

   .. code-block:: bash
      
      $ sudo vgcreate chef /dev/xvdf

   then:

   .. code-block:: bash
      
      $ sudo lvcreate -l 80%VG -n data

   then:

   .. code-block:: bash
      
      $ sudo mkdir -p /var/opt/opscode/drbd/data

   then:

   .. code-block:: bash
      
      $ sudo mkfs.ext4 /dev/mapper/chef-data

   and then:

   .. code-block:: bash
      
      $ sudo mount /dev/mapper/chef-data /var/opt/opscode/drbd/data

#. Proceed with the installation as normal.
#. Run the one of the following commands on all nodes:

   .. code-block:: bash
      
      $ rsync -avz /etc/opscode FQDN:/etc

   or:

   .. code-block:: bash
      
      $ rsync -avz /etc/opscode/ FQDN:/etc/opscode

   where ``FQDN`` is the address of the passive back-end.

#. Install packages on all nodes.
#. Run the following command:

   .. code-block:: bash
      
      $ chef-server-ctl reconfigure


Check HA Status
=====================================================
.. include:: ../../includes_api_chef_server/includes_api_chef_server_endpoint_status.rst
