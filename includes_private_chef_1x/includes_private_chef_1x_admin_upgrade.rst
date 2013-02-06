.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Upgrading Private Chef


Standalone Upgrade

The installation process for a standalone upgrade of Private Chef does not reconfigure Private Chef or restart any of the services. This prevents inadvertent failovers from occurring on HA installations.

On RedHat RPM based systems run rpm with the appropriate upgrade flags and with the new RPM to be installed:

.. code-block:: bash

   $ rpm -Uvh private-chef-1.1.10-1.el6.x86_64.rpm


Warning
When upgrading from Private Chef version 1.1.14 or earlier, a package script will delete /usr/bin/private-chef-ctl. You can recreate it with:

.. code-block:: bash

   $ ln -sf /opt/opscode/embedded/cookbooks/bin/private-chef-ctl /usr/bin/



On Ubuntu or Debian deb-package based systems run dpkg with the install flag:

.. code-block:: bash

   $ dpkg -i private-chef_1.1.10-1.ubuntu.10.04_amd64.deb

After installing the upgraded package, you must instruct private-chef-ctl to update the configuration:

.. code-block:: bash

   $ private-chef-ctl upgrade



High Availability Upgrade

The high availability process is substantially more complicated than a standalone upgrade. Systems must be upgraded in a specific order, and key material generated during the first install must be copied around manually to the other nodes in the cluster by the user performing the upgrade. Also it is important to validate that services are down and kill any stray processes (this is for upgrading from old builds prior to 1.1.10).

Identifying the Bootstrap Server

The bootstrap server should be defined in your Private Chef configuration file, /etc/opscode/private-chef.rb:

.. code-block:: ruby

   server "opc-backend-bootstrap.local",
     :ipaddress => "172.30.1.100",
     :role => "backend",
     :bootstrap => true

The bootstrap server will also contain a bootstrap file on the filesystem at /var/opt/opscode/bootstrapped


Identifying the Backend Master

Run private-chef-ctl ha-status on both backend servers and identify which server returns the line identifying it as the master backend:

.. code-block:: bash

   [OK] cluster status = master


Setting The Backend Master

Warning
The backend master should be the same as the bootstrap server before you proceed.
At this point, you want to ensure that the backend master is the same server as the bootstrap server. If the the results of the previous two steps not the same, then you must fail-over the backend to the bootstrap server: Graceful Transitions


Upgrading The Backend Master

On RedHat RPM based systems run rpm with the appropriate upgrade flags and with the new RPM to be installed:

.. code-block:: bash

   $ rpm -Uvh private-chef-1.1.10-1.el6.x86_64.rpm

On Ubuntu or Debian deb-package based systems run dpkg with the install flag:

.. code-block:: bash

   $ dpkg -i private-chef_1.1.10-1.ubuntu.10.04_amd64.deb

After installing the upgraded package, you must instruct private-chef-ctl to update the configuration and perform the upgrade:

   $ private-chef-ctl upgrade


Validating The Backend Master

Next, wait until the load average of the server has dropped by watching top until the load average on the server is below 1.00 and the server has finished initializing. Then run the test suite against the backend by running the command on the upgraded backend master:

.. code-block:: bash

    $ private-chef-ctl test

If this test succeeds without any red failing tests, then you are ready to proceed.




Copying Configuration To Other Nodes

Warning
The entire contents of /etc/opscode must be copied from the backend master to all of the other members of the cluster. There may be new configuration state generated as a result of bootstrapping the first member of the cluster which must agree on all cluster members.

The entire contents of /etc/opscode on the backend master must now be copied to the other cluster members. The easiest way to accomplish this is to have ssh root trust and logins setup between all the cluster members and to copy the contents around from the backend master. In a cluster with backed master named be1, backend slave named be2, and frontend servers fe1 and fe2 this might look like:

.. code-block:: bash

   be1# scp /etc/opscode/* fe1:/etc/opscode
   be1# scp /etc/opscode/* fe2:/etc/opscode
   be1# scp /etc/opscode/* be2:/etc/opscode

The details of how to accomplish shipping this data between servers will vary from site to site, please use whatever scp and rsync tools you have available.

For example, a particularly simple method is to configure SSH agent forwarding on your workstation. A successful authentication and login of the user from the workstation to be1 can be passed through from be1 to the other members of the cluster, just by initiating a connection to them from be1.


Upgrading The Backend Slave

Once the /etc/opscode files have been copied over to the backend slave from the master, the backend slave may be updated.

On RedHat RPM based systems run rpm with the appropriate upgrade flags and with the new RPM to be installed:

.. code-block:: bash

   $ rpm -Uvh private-chef-1.1.10-1.el6.x86_64.rpm

On Ubuntu or Debian deb-package based systems run dpkg with the install flag:

.. code-block:: bash

   $ dpkg -i private-chef_1.1.10-1.ubuntu.10.04_amd64.deb

After installing the upgraded package, you must instruct private-chef-ctl to update the configuration and perform the upgrade:

.. code-block:: bash

   $ private-chef-ctl upgrade

This may trigger a cluster failover, which will require watching the keepalived logs until the cluster failover completes and the server has transitioned fully into either the master or backup states:

.. code-block:: bash

   $ private-chef-ctl keepalived tail
   
   ==> /var/log/opscode/keepalived/cluster.log <==
   Wed, 28 Mar 2012 22:09:14 +0000: Stopping service opscode-expander-reindexer
   Wed, 28 Mar 2012 22:09:14 +0000: Stopping service opscode-org-creator
   Wed, 28 Mar 2012 22:09:15 +0000: Stopping service opscode-chef
   Wed, 28 Mar 2012 22:09:15 +0000: Stopping service opscode-erchef
   Wed, 28 Mar 2012 22:09:15 +0000: Stopping service opscode-webui
   Wed, 28 Mar 2012 22:09:16 +0000: Stopping service php-fpm
   Wed, 28 Mar 2012 22:09:16 +0000: Stopping service fcgiwrap
   Wed, 28 Mar 2012 22:09:17 +0000: Stopping service nagios
   Wed, 28 Mar 2012 22:09:17 +0000: Stopping service nginx
   Wed, 28 Mar 2012 22:09:18 +0000: Transitioned to backup


If instead bringing the backup node online triggers a transition to master, please use the top command to watch for the load average to fall below 1.00 before proceeding.



Upgrading The Frontends

On RedHat RPM based systems run rpm with the appropriate upgrade flags and with the new RPM to be installed:

.. code-block:: bash

   $ rpm -Uvh private-chef-1.1.10-1.el6.x86_64.rpm

On Ubuntu or Debian deb-package based systems run dpkg with the install flag:

.. code-block:: bash

   $ dpkg -i private-chef_1.1.10-1.ubuntu.10.04_amd64.deb


After installing the upgraded package, you must instruct private-chef-ctl to update the configuration and perform the upgrade:

.. code-block:: bash

   $ private-chef-ctl upgrade


