.. THIS PAGE IS IDENTICAL TO docs.getchef.com/server_high_availability.html BY DESIGN
.. THIS PAGE IS LOCATED AT THE /server/ PATH.

=====================================================
High Availability 
=====================================================

.. include:: ../../includes_server_ha/includes_server_ha.rst



Status
=====================================================
.. include:: ../../includes_api_chef_server/includes_api_chef_server_endpoint_status.rst

DRBD
=====================================================
.. include:: ../../includes_server_ha/includes_server_ha_drbd.rst

Scalability 
-----------------------------------------------------
Scalability for front-end servers is achieved by horizontally scaling the number of servers.

Scalability for back-end servers is achieved by vertically scaling the servers. For example, adding memory, CPU, and faster disks will all increase throughput from the back-end servers. Faster disks, and dedicated network interface cards will all increase the reliability of |drbd| and the responsiveness of the |chef server|.

Failover and Recovery
-----------------------------------------------------
When the primary server in the cluster fails, the |vrrp| heartbeat will stop. At this point the backup server will begin transitioning to the primary state, which involves:

#. Assigning the virtual IP address and sending a ``proxy-arp``
#. Attempting to take-over as the primary server for the |drbd| device
#. Starting all of the back-end services

.. note:: The first step is transitioning the virtual IP address, which means that traffic will flow to the backup server while it makes the transition to being the primary server.

Graceful Transitions
-----------------------------------------------------
The |keepalived| service manages the |vrrp| and cluster transitions. It should be running on both the primary and secondary servers. To transition from the primary to the secondary, simply run the following on the primary:

.. code-block:: bash

   $ private-chef-ctl stop keepalived

which will initiate a failover from the primary to the secondary. This will cause the current primary to:

#. Remove the virtual IP address.
#. Stop the services.
#. Unmount the |drbd| device.
#. Becoming secondary for the |drbd| device. 

Meanwhile, the backup will be undergoing the same steps as listed above. Use the ``ha-status`` option to view the progress:

.. code-block:: bash

   $ watch -n1 sudo private-chef-ctl ha-status

Split Brains
-----------------------------------------------------
.. include:: ../../includes_server_ha/includes_server_ha_drbd_split_brain.rst

Split-brain Handlers
-----------------------------------------------------
.. include:: ../../includes_server_ha/includes_server_ha_drbd_handlers.rst

Assumptions
-----------------------------------------------------
.. include:: ../../includes_server_ha/includes_server_ha_drbd_assumptions.rst

Failure Scenarios
=====================================================
.. include:: ../../includes_server_ha/includes_server_ha_drbd_scenario.rst

Scenarios 1 and 2
-----------------------------------------------------
.. include:: ../../includes_server_ha/includes_server_ha_drbd_scenario_1and2.rst

Scenario 3
-----------------------------------------------------
.. include:: ../../includes_server_ha/includes_server_ha_drbd_scenario_3.rst

Scenario 4
-----------------------------------------------------
.. include:: ../../includes_server_ha/includes_server_ha_drbd_scenario_4.rst

Scenario 5
-----------------------------------------------------
.. include:: ../../includes_server_ha/includes_server_ha_drbd_scenario_5.rst