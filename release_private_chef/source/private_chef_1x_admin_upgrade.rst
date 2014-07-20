=====================================================
Upgrade Private Chef
=====================================================

.. warning:: This documentation is about |chef private|, an older version of the |chef server|. For documentation about the current version of the |chef server|, see http://docs.opscode.com/server/.

There are two upgrade scenarios for |chef private|: standalone and high availability.

.. warning:: This topic is not about how to upgrade from |chef private| to |chef server oec| 11. For information about how to upgrade from |chef private| to |chef server oec|, see the topics for `standalone <http://docs.opscode.com/upgrade_server_standalone.html>`_ and/or `high availability <http://docs.opscode.com/upgrade_server_ha.html>`_ upgrades.

Standalone Upgrade
=====================================================
The installation process for a Standalone upgrade of |chef private| does not reconfigure |chef private| or restart any of the services. This prevents inadvertent fail overs from occurring on High Availability installations.

On |redhat| |rpm| based systems run |rpm| with the appropriate upgrade flags and with the new |rpm| to be installed:

.. code-block:: bash

   $ rpm -Uvh private-chef-1.1.10-1.el6.x86_64.rpm

.. warning:: When upgrading from |chef private| version 1.1.14 or earlier, a package script will delete ``/usr/bin/private-chef-ctl``. Recreate that script using the following command:

.. code-block:: bash

   $ ln -sf /opt/opscode/embedded/cookbooks/bin/private-chef-ctl /usr/bin/

On |ubuntu| or |debian| deb-package based systems run |debian dpkg| with the install flag:

.. code-block:: bash

   $ dpkg -i private-chef_1.1.10-1.ubuntu.10.04_amd64.deb

After installing the upgraded package, instruct |private chef ctl| to update the configuration:

.. code-block:: bash

   $ private-chef-ctl upgrade

High Availability Upgrade
=====================================================

The High Availability upgrade process is substantially more complicated than a Standalone upgrade. Systems must be upgraded in a specific order, and key material generated during the first install must be copied around manually to the other nodes in the cluster by the user performing the upgrade. Also it is important to validate that services are down and kill any stray processes (this is for upgrading from old builds prior to 1.1.10).

Identify Bootstrap Server
-----------------------------------------------------
The bootstrap server should be defined in the |chef private| configuration file, ``/etc/opscode/private-chef.rb``:

.. code-block:: ruby

   server "opc-backend-bootstrap.local",
     :ipaddress => "172.30.1.100",
     :role => "backend",
     :bootstrap => true

The bootstrap server will also contain a bootstrap file on the filesystem at ``/var/opt/opscode/bootstrapped``.

Identify Backend Master
-----------------------------------------------------
Run ``private chef ctl ha-status`` on both backend servers, and then identify which server returns the line identifying it as the master backend:

.. code-block:: bash

   [OK] cluster status = master

Set Backend Master
-----------------------------------------------------
.. warning:: The back-end master should be the same as the bootstrap server before you proceed. 

At this point, ensure that the back-end master is the same server as the bootstrap server. If the the results of the previous two steps not the same, then fail-over the backend to the bootstrap server.

Upgrade Backend Master
-----------------------------------------------------
On |redhat| |rpm| based systems run |rpm| with the appropriate upgrade flags and with the |rpm| to be installed:

.. code-block:: bash

   $ rpm -Uvh private-chef-1.1.10-1.el6.x86_64.rpm

On |ubuntu| or |debian| deb-package based systems run |debian dpkg| with the install flag:

.. code-block:: bash

   $ dpkg -i private-chef_1.1.10-1.ubuntu.10.04_amd64.deb

After installing the upgraded package, instruct |private chef ctl| to update the configuration and perform the upgrade:

   $ private-chef-ctl upgrade

Validate Backend Master
-----------------------------------------------------
Next, wait until the load average of the server has dropped by watching top until the load average on the server is below 1.00 and the server has finished initializing. Then run the test suite against the backend by running the command on the upgraded backend master:

.. code-block:: bash

    $ private-chef-ctl test

If this test succeeds without any red failing tests, proceed to the next step.

Copy Configuration to Nodes
-----------------------------------------------------
.. warning:: The entire contents of ``/etc/opscode`` must be copied from the backend master to all of the other members of the cluster. There may be new configuration state generated as a result of bootstrapping the first member of the cluster which must agree on all cluster members.

The entire contents of ``/etc/opscode`` on the backend master must now be copied to the other cluster members. The easiest way to accomplish this is to have |ssh| root trust and logins setup between all the cluster members and to copy the contents around from the backend master. In a cluster with back-end master named ``be1``, back-end slave named ``be2``, and front-end servers ``fe1`` and ``fe2`` this might look like:

.. code-block:: bash

   be1# scp /etc/opscode/* fe1:/etc/opscode
   be1# scp /etc/opscode/* fe2:/etc/opscode
   be1# scp /etc/opscode/* be2:/etc/opscode

The details of how to accomplish shipping this data between servers will vary from site to site, please use any available ``scp`` and ``rsync`` tools.

For example, a particularly simple method is to configure |ssh| agent forwarding on a workstation. A successful authentication and login of the user from the workstation to ``be1`` can be passed through from ``be1`` to the other members of the cluster, just by initiating a connection to them from ``be1``.

Upgrade Backend Slave
-----------------------------------------------------
Once the ``/etc/opscode`` files have been copied over to the backend slave from the master, the backend slave may be updated.

On |redhat| |rpm| based systems run |rpm| with the appropriate upgrade flags and with the new |rpm| to be installed:

.. code-block:: bash

   $ rpm -Uvh private-chef-1.1.10-1.el6.x86_64.rpm

On |ubuntu| or |debian| deb-package based systems run |debian dpkg| with the install flag:

.. code-block:: bash

   $ dpkg -i private-chef_1.1.10-1.ubuntu.10.04_amd64.deb

After installing the upgraded package, instruct |private chef ctl| to update the configuration and perform the upgrade:

.. code-block:: bash

   $ private-chef-ctl upgrade

This may trigger a cluster failover, which will require watching the |keepalived| logs until the cluster failover completes and the server has transitioned fully into either the master or backup states:

.. code-block:: bash

   $ private-chef-ctl tail keepalived
   
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

If instead bringing the backup node online triggers a transition to master, use the top command to watch for the load average to fall below 1.00 before proceeding.

Upgrade Front End
-----------------------------------------------------
On |redhat| |rpm| based systems run |rpm| with the appropriate upgrade flags and with the new |rpm| to be installed:

.. code-block:: bash

   $ rpm -Uvh private-chef-1.1.10-1.el6.x86_64.rpm

On |ubuntu| or |debian| deb-package based systems run |debian dpkg| with the install flag:

.. code-block:: bash

   $ dpkg -i private-chef_1.1.10-1.ubuntu.10.04_amd64.deb

After installing the upgraded package, instruct |private chef ctl| to update the configuration and perform the upgrade:

.. code-block:: bash

   $ private-chef-ctl upgrade
