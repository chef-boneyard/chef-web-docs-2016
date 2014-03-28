============
All upgrades
============

All upgrades should be performed first with a copy of Production data, in an environment that is non-essential. This could be a Vagrant VM and is our typical test hardware for this purpose.

Backups are good to have for many reasons at all times. Especially during upgrades, tested backups become a critical part of our toolkit.

=======================
Upgrading from OPC1.2.x
=======================

Upgrading from OPC1.2x to EC11x REQUIRES that you first upgrade all systems in a cluster to OPC1.4.6.

==================================================
OPC 1.4.6 -> EC11.1.2 Upgrade process related bugs
==================================================

OC-11297 - EC 11.0.X not saving its migration-level state on HA backends. Breaks p-c-c upgrade on subsequent upgrades
OC-11382 - HA Upgrades to 11.1.x fail because keepalived restart interferes with partybus migrations

..note:: Unless otherwise noted, all patching should be done after OPC 1.4.6 is installed, and before the EC11.1.2 package install and upgrade begins.

Important: Check runsvdir status

Please be aware of `Runit Process Structure and Checks`_ in between each upgrade of the system. Here is an example of the highest level upgrade process that should be followed.

Check runsvdir status -> OPC-1.2.x -> Check runsvdir status -> OPC1.4.6 -> Check runsvdir status -> EC11x -> Check runsvdir status

================
Pre-Flight Check
================

Backup the data on the bootstrap backend machine. (e.g. LVM snapshot, VMware snapshot, etc)

Run the following on all machines to make sure things are in a sane state. (e.g. runit)

``private-chef-ctl reconfigure``

Stop all frontend machines.

``private-chef-ctl stop``

Identify the name of the original non-bootstrap backend machine. This is the backend machine that does not have :bootstrap => true in /etc/opscode/private-chef.rb.

Stop keepalived on the original non-bootstrap backend machine. This will ensure that the bootstrap backend machine is the active machine. This action may trigger a failover.

``private-chef-ctl stop keepalived``

OC-11297 - On the backend machines, examine the /var/opt/opscode/upgrades/migration-level file. It should match the version on the frontend machines. In HA systems, the migration-level file is usually correct on the front end nodes but not the backend nodes due to the fact that the backend installation process gets interrupted for DRBD setup. If it is incorrect on the backend nodes, please copy it from the frontend nodes before proceeding.

EC Version	migration-state
1.4.6	major: 1, minor: 7
11.0.x	major: 1, minor: 12
11.1.x	major: 1, minor: 13
Before proceeding, make sure that the bootstrap backend node and all of its services are healthy, and that all services are stopped on the standby. Please refer to `Runit Process Structure and Checks`_ to make a determination about "healthy".

=============
Upgrade Steps
=============

Install the Enterprise Chef server package on all machines using dpkg or rpm.

OC-11382 - On both backend machines, copy the upgrade.rb from this gist to /opt/opscode/embedded/service/omnibus-ctl/upgrade.rb.

cp /tmp/upgrade.rb /opt/opscode/embedded/service/omnibus-ctl/upgrade.rb

On the bootstrap backend machine, perform a reconfigure and then WAIT about 2 minutes until all services have returned to a normal, working state according to ha-status and /var/log/opscode/keepalived/cluster.log

``private-chef-ctl reconfigure``

Once all services are verified Upgrade the bootstrap backend machine. (If anything strange happens here, please consider how the issue you see you could be related to runit. Please refer to `Runit Process Structure and Checks`_ for cleanup. You will also need to ensure that all omnibus-ctl, private-chef-ctl, and sv processes are gone. Then, be sure that the opscode-chef-mover service is started and retry the upgrade.)

``private-chef-ctl upgrade``

Copy the entire /etc/opscode directory from the bootstrap backend machine to all frontend and backend machines. For example, from each machine run:

``scp -r BOOTSTRAP_SERVER_IP:/etc/opscode /etc``

Upgrade the secondary backend machine.

``private-chef-ctl upgrade``

Upgrade all frontend machines.

``private-chef-ctl upgrade``

Run the following on all machines to make sure all services are started.

``private-chef-ctl start``

After the upgrade process is complete, and the state of the system after the upgrade has been tested and verified, remove old data on all machines.

``private-chef-ctl cleanup``

==================================
Runit Process Structure and Checks
==================================

Please use the following diagram to understand the runit process supervision tree. All runit components can be inspected with ps aux | grep [s]v::


    RHEL6/Ubuntu10.04+ Upstart (Upstart config file in /etc/init/opscode-runsvdir on pre EC11x, /etc/init/private-chef-runsvdir in EC11x)
    |
    ----> opscode-runsvdir or private-chef-runsvdir 
        |
        ----> runsv -> (EC11 service like postgresql or opscode-erchef)
            |
            ---->svlogd -> (Logging for each service's STDOUT. Goes into a "current" file)

Between upgrades from major version to major version of Private Chef or Enterprise Chef, you will want to check that the ps aux | grep [r]unsvdir output looks like this::

    root      1543  0.0  0.0   4032   196 ?        Ss   20:18   0:00 runsvdir -P /opt/opscode/service log:         ...........................................................................................................................................................................................................................................................................................................................................................................................................

and not like this::

    root 864 0.0 0.0 4088 476 ? Ss 2013 14:26 runsvdir -P /opt/opscode/service log: not exist?svlogd: pausing: unable to rename current: /var/log/opscode/opscode-erchef: file does not exist?svlogd: pausing: unable to rename current: /var/log/opscode/opscode-erchef: file does not exist?svlogd: pausing: unable to rename current: /var/log/opscode/opscode-erchef: file does not exist?svlogd: pausing: unable to rename current: /var/log/opscode/opscode-erchef: file does not exist?

Any number of issues can occur with runit's runsvdir process. The most common in an OPC/EC11 setting are these

* In OPC 1.4.6, /var/log/opscode should have 755 permissions, but it doesn't
* Any of the /var/log/opscode/SERVICE/current files are missing
* In EC11, the ownership of /var/log/opscode is not opscode, so the processes cannot read/write their logfiles
* The filesystem where the logs are stored is full

When you encounter a problem like this, the process is to check the error output in the processlist as above, and figure out what has gone wrong for either the runsvdir, or its svlogd processes, or both. Correct the issue, shutdown OPC/EC11, then use Upstart to restart runit's runsvdir:

``private-chef-ctl stop``

* For OPC1.4.6 on RHEL6 and ubuntu10.04+ ``initctl stop opscode-runsvdir``
* For EC11x on RHEL6 and ubuntu10.04+ ``initctl stop private-chef-runsvdir``
..note:: During the upgrade of OPC 1.4.6 -> EC11.1.2, you may have both of the above.

* If continuing an EC11.1.2 upgrade ``initctl start private-chef-runsvdir``
* If fixing up an OPC1.4.6 system before an upgrade to EC11.1.2 ``initctl start private-chef-runsvdir``

=======================
LDAP Authentication Bug
=======================

OC-11384 - EC 11.1.1+: Creating a new user with LDAP enabled fails

If you use LDAP authentication for the Enterprise Chef server then you will also want to use the following instructions on the frontend machines.

EC 11.1.x has a bug [OC-11384] when an LDAP user attempts to create a new account 
that has never existed in the Enterprise Chef database before, rather than linking 
with an existing internal user. 
 
Please apply the following patch to your EC 11.1.x release using these instructions::
 
  $ cd /opt/opscode/embedded/service/gem/ruby/1.9.1/bundler/gems/mixlib-authorization-c03f584a371b
  $ patch -p1 < /tmp/cache/ec11.1-ldap500error.patch 
  patching file lib/opscode/models/user.rb
  $ private-chef-ctl restart opscode-account
  ok: run: opscode-account: (pid 16585) 0s

This patch should be saved as ec11.1-ldap500error.patch::

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
