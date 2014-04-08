======================================================
Notes for High Availability |chef server oec| Upgrades 
======================================================

The following sections contain notes about specific scenarios that some customers may run into when upgrading from |chef private| to |chef server oec|. Please consult with |company_name| support about any of these situations.

All Upgrade Scenarios
=====================================================

All upgrades should be performed first with a copy of Production data, but in an environment that is non-essential. This is often done using a Vagrant VM, but any non-essential environment suitable for testing the upgrade of production data is OK.

Backups are good to have for many reasons, at all times. This is especially true during upgrades. Therefore, ensure that tested backups are available during the entire upgrade process.


Upgrading from |chef private| 1.2.x
=====================================================

Upgrading from |chef private| 1.2.x to any version of |chef server oec| 11 **REQUIRES** that |chef private| 1.2.x first be upgraded (on all systems) to |chef private| 1.4.6.


Upgrading from |chef private| 1.4.6 to |chef server oec| 11.1.2
===========================================================================

The following sections are specific to |chef private| 1.4.6 upgrades to |chef server oec| 11.1.2.

.. note:: Unless otherwise noted, all patching should be done after OPC 1.4.6 is installed, and before the EC11.1.2 package install and upgrade begins.

Known Issues
=====================================================

The following bugs may affect the upgrade:

* OC-11297 --- EC 11.0.X not saving its migration-level state on HA back end machines. Breaks ``private-chef-ctl upgrade`` on subsequent upgrades
* OC-11382 --- HA Upgrades to 11.1.x fail because keepalived restart interferes with partybus migrations
* OC-11449 --- Umasks other than 0022 break permissions
* OC-11490 --- Root ownership of ``/var/log/opscode/keepalived`` prevents keepalived from running properly
* OC--11426 --- Upgrade Runit Ownership Issue OPC 1.4.6 -> EC11.1.2

.. warning:: Check runsvdir status during the upgrade, especially between each upgrade of the system. Here is an example of the highest level upgrade process that should be followed: check runsvdir status -> |chef private| 1.2.x -> check runsvdir status -> |chef private| 1.4.6 -> check runsvdir status -> |chef server oec| 11.x -> check runsvdir status. See "Runit Process Structure and Checks" below for more information.


Pre-Flight Check
=====================================================
It is recommended to do the following:

#. Backup the data on the bootstrap back end machine. (e.g. LVM snapshot, VMware snapshot, etc)

#. Run the following on all machines to make sure things are in a sane state. (e.g. runit):

   .. code-block:: bash

      $ private-chef-ctl reconfigure

#. Stop all frontend machines:

   .. code-block:: bash

      private-chef-ctl stop

#. Identify the name of the original non-bootstrap back end machine. This is the back end machine that does not have ``:bootstrap => true`` in ``/etc/opscode/private-chef.rb``.

#. Stop keepalived on the original non-bootstrap back end machine. This will ensure that the bootstrap back end machine is the active machine. This action may trigger a failover.

   .. code-block:: bash

      private-chef-ctl stop keepalived

#. For known issue OC-11297 - On the back end machines, examine the ``/var/opt/opscode/upgrades/migration-level`` file. It should match the version on the front end machines. In high availability systems, the migration-level file is usually correct on the front end nodes but not the back end nodes due to the fact that the back end machine installation process gets interrupted for DRBD setup. If it is incorrect on the back end machines, please copy it from the front end nodes before proceeding.

   .. list-table::
      :widths: 200 300
      :header-rows: 1
   
      * - Chef Server Version
        - Migration Level
      * - |chef private| 1.4.6
        - major: 1, minor: 7
      * - |chef server oec| 11.0.x
        - major: 1, minor: 12
      * - |chef server oec| 11.1.x
        - 11.1.x	major: 1, minor: 13

#. For known issue OC-11449 - While running OPC 1.4.6 and before the upgrade, be sure that the permissions on /var/log/opscode are 0755. After installing the EC11.1.2 package and before a reconfigure, please apply the OC-11449.patch file listed below using the following commands as root. Please change the DIRECTORY as desired.

   .. code-block:: bash

      PATCH_LOCATION=/DIRECTORY/OC-11449.patch
      cd /opt/opscode/embedded/cookbooks
      patch --dry-run --verbose -p3 <$PATCH_LOCATION
      patch -p3 </root/$PATCH_LOCATION

#. For known issue OC-11490 - After installing the EC11.1.2 package and before a reconfigure or upgrade, please apply the OC-11490.patch file listed below using the following commands as root. Please change the DIRECTORY as desired.

   .. code-block:: bash
   
      PATCH_LOCATION=/DIRECTORY/OC-11490.patch
      cd /opt/opscode/embedded/cookbooks
      patch --dry-run --verbose -p3 <$PATCH_LOCATION
      patch -p3 </root/$PATCH_LOCATION

#. For known issue OC-11426 - While running |chef private| 1.4.6 and before the upgrade, be sure that the status for Runit looks good. See "Runit Process Structure and Checks" below for more information.

#. Before proceeding, make sure that the bootstrap back end machine and all of its services are healthy, and that all services are stopped on the standby. Please check runsvdir status to make a determination about "healthy". See "Runit Process Structure and Checks" below for more information.


Upgrade Steps
=====================================================

#. Install the |chef server oec| server package on all machines using dpkg or rpm.

#. OC-11382 - On both back end machines, copy the ``upgrade.rb`` file from the end of these notes to ``/opt/opscode/embedded/service/omnibus-ctl/upgrade.rb``.

   .. code-block:: bash

      cp /tmp/upgrade.rb /opt/opscode/embedded/service/omnibus-ctl/upgrade.rb

#. On the bootstrap back end machine, perform a reconfigure and then WAIT about 2 minutes until all services have returned to a normal, working state according to ha-status and ``/var/log/opscode/keepalived/cluster.log``:

   .. code-block:: bash

      private-chef-ctl reconfigure

#. Once all services are verified, upgrade the bootstrap back end machine. (If anything strange happens here, please consider how the issue you see you could be related to runit. Please check runsvdir status for cleanup. You will also need to ensure that all ``omnibus-ctl``, ``private-chef-ctl``, and ``sv`` processes are gone. Then, be sure that the ``opscode-chef-mover`` service is started and retry the upgrade.)

   .. code-block:: bash

      private-chef-ctl upgrade

   
    See "Runit Process Structure and Checks" below for more information.
#. Copy the entire ``/etc/opscode`` directory from the bootstrap back end machine to all front end and back end machines. For example, from each machine run:

   .. code-block:: bash

      scp -r BOOTSTRAP_SERVER_IP:/etc/opscode /etc

#. Upgrade the secondary back end machine.

   .. code-block:: bash

      private-chef-ctl upgrade

#. Upgrade all frontend machines.

   .. code-block:: bash

      private-chef-ctl upgrade

#. Run the following on all machines to make sure all services are started.

   .. code-block:: bash

      private-chef-ctl start

#. After the upgrade process is complete, and the state of the system after the upgrade has been tested and verified, remove old data on all machines.

   .. code-block:: bash

      private-chef-ctl cleanup


Runit Process Structure and Checks
=====================================================

Please use the following diagram to understand the runit process supervision tree. All runit components can be inspected with ``ps aux | grep [s]v``::

   RHEL6/Ubuntu10.04+ Upstart
    |
    ----> opscode-runsvdir or private-chef-runsvdir 
        |
        ----> runsv -> (EC11 service like postgresql or opscode-erchef)
            |
            ---->svlogd -> (Logging for each service's STDOUT. Goes into a "current" file)

.. note:: In the diagram above, the Upstart config file is located at ``/etc/init/opscode-runsvdir`` on pre-|chef server oec| 11, and at ``/etc/init/private-chef-runsvdir`` in |chef server oec| 11.x.

Between upgrades from major version to major version of |chef private| or |chef server oec|, you will want to check that the ``ps aux | grep [r]unsvdir`` output looks similar to:

.. code-block:: bash

   root      1543  0.0  0.0   4032   196 ?        Ss   20:18   0:00 runsvdir -P /opt/opscode/service log:
   ......................................................................................................
   ......................................................................................................
   ......................................................................................................

and not similar to:

.. code-block:: bash

   root 864 0.0 0.0 4088 476 ? Ss 2013 14:26 runsvdir -P /opt/opscode/service log: not exist?svlogd: 
   pausing: unable to rename current: /var/log/opscode/opscode-erchef: file does not exist?svlogd: 
   pausing: unable to rename current: /var/log/opscode/opscode-erchef: file does not exist?svlogd: 
   pausing: unable to rename current: /var/log/opscode/opscode-erchef: file does not exist?svlogd: 
   pausing: unable to rename current: /var/log/opscode/opscode-erchef: file does not exist?

Any number of issues can occur with runit's runsvdir process. The most common in an |chef private| or |chef server oec| setting are these:

* In |chef private| 1.4.6, ``/var/log/opscode`` should have ``755`` permissions, but it doesn't
* Any of the ``/var/log/opscode/SERVICE/current`` files are missing
* In |chef server oec|, the ownership of ``/var/log/opscode`` is not ``opscode``, so the processes cannot read/write their log files
* The filesystem where the logs are stored is full

When this type of problem is encountered, the process is to check the error output in the process list as above, and figure out what has gone wrong for either the runsvdir, or its svlogd processes, or both. Correct the issue, shutdown |chef private| or |chef server oec|, then use Upstart to restart runit's runsvdir:

.. code-block:: bash

   private-chef-ctl stop

Restart the runsvdir:

* For |chef private| 1.4.6 on RHEL6 and ubuntu10.04+ ``initctl stop opscode-runsvdir``
* For |chef server oec| 11x on RHEL6 and ubuntu10.04+ ``initctl stop private-chef-runsvdir``

.. note:: During the upgrade of |chef private| 1.4.6 -> |chef server oec| 11.1.2, you may have both of the above.

* If continuing an |chef server oec| 11.1.2 upgrade ``initctl start private-chef-runsvdir``
* If fixing up an |chef private| 1.4.6 system before an upgrade to |chef server oec| 11.1.2 ``initctl start private-chef-runsvdir``

Example
-----------------------------------------------------
The following is one specific problem-fix scenario encountered while proceeding through an OPC 1.4.6 -> EC11.1.2 upgrade. The issue was likely triggered by an unhealthy runit status while running at version OPC 1.4.6::

   +   1. Checked runvsvdir status when it became apparent that the Partybus
   +   initiated final private-chef-ctl start during the EC11.1.2 upgrade
   +   was looping on starting services. It was failing, because it was
   +   getting stuck on the old OPC 1.4.6 processes. This is likely because
   +   the OPC 1.4.6 runsvdir was no longer able to control the processes through
   +   incorrect permissions leading to a bad runsvdir state.
   +
   +   2. Just for good measure, I removed the following links that pointed to
   +   the old process run control directories
   +   lrwxrwxrwx. 1 root root 24 Feb 3 08:08 fcgiwrap ->/opt/opscode/sv/fcgiwrap
   +   lrwxrwxrwx. 1 root root 22 Feb 3 08:08 nagios -> /opt/opscode/sv/nagios
   +   lrwxrwxrwx. 1 root root 20 Feb 3 08:08 nrpe -> /opt/opscode/sv/nrpe
   +   lrwxrwxrwx. 1 root root 28 Feb 3 08:07 opscode-chef -> /opt/opscode/sv/opscode-chef
   +   lrwxrwxrwx. 1 root root 23 Feb 3 08:08 php-fpm -> /opt/opscode/sv/php-fpm
   +   lrwxrwxrwx. 1 root root 21 Feb 3 08:07 redis -> /opt/opscode/sv/redis
   +
   +   3. We had to cancel the first upgrade attempt, stop opscode-runsvdir and
   +   private-chef-runsvdir and make sure all their child processes were removed from the process list.
   +
   +   4. chown -R opscode.opscode /var/log/opscode # Fix permissions, so
   +   that the new runsvdir can do stuff with its runsv and svlogd processes.
   +
   +   5. start private-chef-runsvdir
   +
   +   6. Wait for good bootstrap master state.
   +
   +   7. Check ps aux | grep runsvdir. Status looks good.
   +
   +   8. Restart the upgrade.
   +
   +   9. Proceeded to the end of the upgrade.
   +
   +   10. p-c-c cleanup

OC-11449 patch for EC11.1.2
=====================================================
The following is the code for the ``OC-11449.patch`` file:

.. code-block:: ruby

   From 7aa73aa23c4550d232cb9f6dadd72d924fbfffb0 Mon Sep 17 00:00:00 2001
   From: Sean Horn <sean_horn@opscode.com>
   Date: Fri, 21 Mar 2014 02:00:49 -0400
   Subject: [PATCH] Protect logfiles against root umask other than 0022
   
   ---
    CHANGELOG.md                                                 | 1 +
    RELEASE_NOTES.md                                             | 1 +
    files/private-chef-cookbooks/private-chef/recipes/default.rb | 7 +++++++
    3 files changed, 9 insertions(+)
   
   diff --git a/files/private-chef-cookbooks/private-chef/recipes/default.rb b/files/private-chef-cookbooks/private-chef/recipes/default.rb
   index 2d9615d..b1280ae 100644
   --- a/files/private-chef-cookbooks/private-chef/recipes/default.rb
   +++ b/files/private-chef-cookbooks/private-chef/recipes/default.rb
   @@ -139,6 +139,13 @@
      action :create
    end
   
   +directory "/var/log/opscode" do
   +  owner "opscode"
   +  group "opscode"
   +  mode "0755"
   +  action :create
   +end
   +
    include_recipe "enterprise::runit"
    include_recipe "private-chef::sysctl-updates"
   
   --
   1.9.1

OC-11449 patch for EC11.1.2
=====================================================
The following is the code for the ``OC-11490.patch`` file:

.. code-block:: ruby

   From 5bd73ecae3aec99930ea23b03f502da28eb5b3bb Mon Sep 17 00:00:00 2001
   From: Jeremiah Snapp <jeremiah@getchef.com>
   Date: Mon, 7 Apr 2014 06:49:35 -0400
   Subject: [PATCH] OC-11490 Explicitly set keepalived directory ownership
   
   Keeaplived's svlogd runs as the opscode user but cannot
   write to log files in /var/log/opscode/keepalived because
   the directory is owned by root.
   
   This prevents keepalived from running properly.
   ---
    files/private-chef-cookbooks/private-chef/recipes/keepalived.rb | 9 ++++++++-
    1 file changed, 8 insertions(+), 1 deletion(-)
   
   diff --git a/files/private-chef-cookbooks/private-chef/recipes/keepalived.rb b/files/private-chef-cookbooks/private-chef/recipes/keepalived.rb
   index b8c7925..e415af6 100644
   --- a/files/private-chef-cookbooks/private-chef/recipes/keepalived.rb
   +++ b/files/private-chef-cookbooks/private-chef/recipes/keepalived.rb
   @@ -10,13 +10,20 @@
    keepalived_bin_dir = File.join(keepalived_dir, "bin")
    keepalived_log_dir = node['private_chef']['keepalived']['log_directory']
    
   -[ keepalived_dir, keepalived_etc_dir, keepalived_bin_dir, keepalived_log_dir ].each do |dir|
   +[ keepalived_dir, keepalived_etc_dir, keepalived_bin_dir ].each do |dir|
      directory dir do
   +    owner "root"
        recursive true
        mode "0755"
      end
    end
    
   +directory keepalived_log_dir do
   +  owner node['private_chef']['user']['username']
   +  recursive true
   +  mode "0700"
   +end
   +
   template File.join(keepalived_etc_dir, "keepalived.conf") do
     source "keepalived.conf.erb"
     mode "0644"
   -- 
   1.9.1

LDAP Authentication Bug
=====================================================

OC-11384 - EC 11.1.1+: Creating a new user with LDAP enabled fails

If you use LDAP authentication for the |chef server oec| server then you will also want to use the following instructions on the front end machines.

|chef server oec| 11.1.x has a bug [OC-11384] when an LDAP user attempts to create a new account that has never existed in the |chef server oec| database before, rather than linking with an existing internal user. 
 
Please apply the following patch to your |chef server oec| 11.1.x release using these instructions:

.. code-block:: bash
 
   $ cd /opt/opscode/embedded/service/gem/ruby/1.9.1/bundler/gems/mixlib-authorization-c03f584a371b
   $ patch -p1 < /tmp/cache/ec11.1-ldap500error.patch 
   patching file lib/opscode/models/user.rb
   $ private-chef-ctl restart opscode-account
   ok: run: opscode-account: (pid 16585) 0s

This patch should be saved as ec11.1-ldap500error.patch:

.. code-block:: bash

   From 516722b48c700e9a7c201e587268b953ad73811c Mon Sep 17 00:00:00 2001
   From: sdelano <stephen@opscode.com>
   Date: Thu, 6 Mar 2014 08:58:50 -0800
   Subject: [PATCH] [OC-11384] LDAP User Create - don't set :hash_type to :bcrypt
    
   When creating new users that are externally authenticated (currently
   only LDAP users) don't set the :hash_type of the user object to
   :bcrypt (the default). Setting the :hash_type to :bcrypt enforces a
   PostgreSQL schema constraint that the :hashed_password field must
   also be set. Since the user password information is stored
   externally, we're not going to be storing any password information
   here. Setting the :hash_type to nil will not enforce any schema
   constraints.
   ---
    lib/opscode/models/user.rb | 3 ++-
    1 file changed, 2 insertions(+), 1 deletion(-)
    
   diff --git a/lib/opscode/models/user.rb b/lib/opscode/models/user.rb
   index c5916a1..479223b 100644
   --- a/lib/opscode/models/user.rb
   +++ b/lib/opscode/models/user.rb
   @@ -155,7 +155,8 @@ def authz_model_class
    
          def initialize(*args)
            # Default set to bcrypt. Mapper will override this to whatever is persisted
   -        @hash_type = HASH_TYPE_BCRYPT
   +        @hash_type = external_authentication_enabled? ? nil : HASH_TYPE_BCRYPT
   +
            super(*args)
          end
    
   -- 
   1.8.5.5



upgrade.rb
=====================================================
The following is the code for the ``upgrade.rb`` file:

.. code-block:: ruby

   add_command "upgrade", "Upgrade your private chef installation.", 1 do
     reconfigure(false)
     Dir.chdir(File.join(base_path, "embedded", "service", "partybus"))
     bundle = File.join(base_path, "embedded", "bin", "bundle")
     status = run_command("echo 'Sleeping for 2 minutes before migration' ; sleep 120 ; #{bundle} exec ./bin/partybus upgrade")
     if status.success?
       puts "Chef Server Upgraded!"
       exit 0
     else
       exit 1
     end
   end

