.. This page is the Chef 12 server install page, for high availabilty in AWS.

=====================================================
High Availability: AWS
=====================================================

This topic describes how to set up the |chef server| for high availability in |amazon aws|.

Pre-Requisites
=====================================================
Before installing the |chef server| software, perform the following steps.

#. Use an |amazon vpc|. EC2-Classic is not supported.
#. Create appropriate security groups to contain the backend instances. The only requirement for the |chef server| is that ICMP is permitted between the two backend instances; |keepalived| requires it for communication and heartbeat.
#. Launch two servers for the backend |chef server|s. Use the same Amazon Machine Image so that they are identical platform and versions. The servers must be in the same Amazon Availability Zone.
#. Create an |amazon ebs| volume to store the |chef server|'s data. It is recommended that you use a Provisioned IOPS (io1) volume type, with the maximum IOPS ratio for the size of volume.
#. Decide on what IP address the backend virtual IP (VIP) will be. It must reside in the same network segment as the backend machines. It will be specified in the |chef server rb| file; during installation, the high-availability plugin will automatically assign the VIP to the primary instance.
#. Create an Amazon Identity and Access Management (IAM) user with at least the permissions documented in the reference section. Record the user's access and secret keys; these will be used in the |chef server rb| configuration file.

Primary Backend
=====================================================
Use the following steps to set up the primary backend |chef server|:

#. Create an |amazon ebs| volume and attach it to the primary backend.
#. Download the packages from http://downloads.getchef.com/chef-server/ and http://downloads.getchef.com/chef-ha/.
#. Install the ``chef-server-core`` package. For |redhat| and |centos| 6:

   .. code-block:: bash
      
      $ rpm -Uvh /tmp/chef-server-core-<version>.rpm

   For |ubuntu|:

   .. code-block:: bash
      
      $ dpkg -i /tmp/chef-server-core-<version>.deb

   After a few minutes, the |chef server| will be installed.
#. Install ``chef-ha`` package. For |redhat| and |centos| 6:

   .. code-block:: bash
      
      $ rpm -Uvh /tmp/chef-ha-<version>.rpm

   For |ubuntu|:

   .. code-block:: bash
      
      $ dpkg -i /tmp/chef-ha-<version>.deb

#. Create a file named |chef server rb| that is located in the ``/etc/opscode/`` directory. See the |chef server rb| section below for an example of the settings and values that are required. The ``ha['ebs_device']`` setting must specify the actual ``/dev`` device name that is reported by the machine's kernel, which may not be the same value that is reported by |amazon aws|. For example, |amazon aws| may refer to a volume as ``/dev/sdf`` through the management console, but to the Linux kernel on the instance, it may appear as ``/dev/xvdf``.

#. Install Logical Volume Manager tools. For |redhat| and |centos| 6:

   .. code-block:: bash
      
      $ sudo yum install lvm2

   For |ubuntu|:

   .. code-block:: bash
      
      $ sudo apt-get install lvm2

#. Create a physical volume, volume group, and logical volume with the following series of commands. The volume group and logical volume names must be ``data`` and ``chef``, respectively.

   .. code-block:: bash
      
      $ sudo pvcreate /dev/xvdf

   then:

   .. code-block:: bash
      
      $ sudo vgcreate chef /dev/xvdf

   then:

   .. code-block:: bash
      
      $ sudo lvcreate -l 85%VG -n data chef

#. Format and mount the new volume with the following series of commands:

   .. code-block:: bash
      
      $ sudo mkdir -p /var/opt/opscode/drbd/data

   then:

   .. code-block:: bash
      
      $ sudo mkfs.ext4 /dev/mapper/chef-data

   and then:

   .. code-block:: bash
      
      $ sudo mount /dev/mapper/chef-data /var/opt/opscode/drbd/data

#. Run the following command to configure |chef server|:

   .. code-block:: bash
      
      $ sudo chef-server-ctl reconfigure

   This will reconfigure the |chef server|, start |keepalived|, assign the VIP IP address as a secondary address on the Elastic Network Interface, and then configure the machine as the primary backend server.

#. Verify the machine is the primary backend server:

   .. code-block:: bash
      
      $ sudo chef-server-ctl ha-status

   This should display a screen of output indicating that the server is PRIMARY and that all services are running.

   Additionally, you may run the following command to verify that the VIP IP address is configured on the Ethernet interface:

   .. code-block:: bash

      $ ip addr list dev eth0

   Do *not* use the ``ifconfig`` command as it will not show all aliases.

Secondary Backend
=====================================================
Use the following steps to set up the secondary backend |chef server|:

#. Install the ``chef-server-core`` package. For |redhat| and |centos| 6:

   .. code-block:: bash
      
      $ rpm -Uvh /tmp/chef-server-core-<version>.rpm

   For |ubuntu|:

   .. code-block:: bash
      
      $ dpkg -i /tmp/chef-server-core-<version>.deb

   After a few minutes, the |chef server| will be installed.
#. Install ``chef-ha`` package. For |redhat| and |centos| 6:

   .. code-block:: bash
      
      $ rpm -Uvh /tmp/chef-ha-<version>.rpm

   For |ubuntu|:

   .. code-block:: bash
      
      $ dpkg -i /tmp/chef-ha-<version>.deb

#. Install Logical Volume Manager tools. For |redhat| and |centos| 6:

   .. code-block:: bash
      
      $ sudo yum install lvm2

   For |ubuntu|:

   .. code-block:: bash
      
      $ sudo apt-get install lvm2

#. Create the ``/etc/opscode/`` directory, and then copy the contents of the entire ``/etc/opscode`` directory from the primary server, including all certificates and the |chef server rb|.

#. Run the following command:

   .. code-block:: bash
      
      $ sudo chef-server-ctl reconfigure

   This will reconfigure the |chef server|, start |keepalived|, and configure the machine as the secondary backend server.

#. Verify the machine is the secondary backend server:

   .. code-block:: bash
      
      $ sudo chef-server-ctl ha-status

   This should indicate that the server is BACKUP.


Verify Failover
=====================================================

To verify that failover is working, stop keepalived on the primary machine. To watch the failover live, it is recommended that you run

  .. code-block:: bash

     $ watch -n1 sudo chef-server-ctl ha-status

in terminal windows on both the primary and backend prior to stopping keepalived.

Stop |keepalived| on the primary backend machine:

   .. code-block:: bash
      
      $ sudo chef-server-ctl stop keepalived

   A cluster failover should occur.

Once you have verified that failover was successful, restart keepalived on the primary backend machine:

  .. code-block:: bash

     $ sudo chef-server-ctl start keepalived

The primary has now become the secondary, and vice-versa. If you wish to fail back to the original primary, repeat the procedure using the new primary.

Frontend Installation
=====================================================
Use the following steps to set up each frontend |chef server|:

#. Install the ``chef-server-core`` package. For |redhat| and |centos| 6:

   .. code-block:: bash
      
      $ rpm -Uvh /tmp/chef-server-core-<version>.rpm

   For |ubuntu|:

   .. code-block:: bash
      
      $ dpkg -i /tmp/chef-server-core-<version>.deb

   After a few minutes, the |chef server| will be installed.

#. Create the ``/etc/opscode/`` directory, and then copy the entire contents of the ``/etc/opscode`` directory from the primary, including all certificates and the |chef server rb| file.

#. Enable the premium features of the |chef server|! For each of the premium features you want to install, run the following commands:

   .. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_table.rst

#. Run the following command:

   .. code-block:: bash
      
      $ sudo chef-server-ctl reconfigure

References
=====================================================
The following sections show the |chef ha| settings as they appear in a |chef server rb| file and required permissions of the user in Amazon IAM (Identity and Access Management).

|chef server rb|
-----------------------------------------------------
The following example shows a |chef server rb| file:

.. code-block:: ruby

   topology "ha"
   ha['provider'] = 'aws'
   ha['aws_access_key_id'] = '[DELETED]'
   ha['aws_secret_access_key'] = '[DELETED]'
   ha['ebs_volume_id'] = 'vol-xxxxx'
   ha['ebs_device'] = '/dev/xvdf'
   
   server 'ip-172-31-24-97.us-west-1.compute.internal',
     :ipaddress => '172.31.24.97',
     :role => 'backend',
     :bootstrap => true
   
   server 'ip-172-31-24-98.us-west-1.compute.internal',
     :ipaddress => '172.31.24.98',
     :role => 'backend'
   
   backend_vip 'ip-172-31-24-180.us-west-1.compute.internal',
     :ipaddress => '172.31.24.180',
     :device => 'eth0',
     :heartbeat_device => 'eth0'
   
   server 'ip-172-31-30-47.us-west-1.compute.internal',
     :ipaddress => '172.31.30.47',
     :role => 'frontend'
   
   api_fqdn 'ec2-54-183-175-188.us-west-1.compute.amazonaws.com'


IAM Access Management
-----------------------------------------------------
The following example shows IAM access management settings that are required for |chef ha|:

.. code-block:: javascript

   {
     "Version": "2012-10-17",
     "Statement": [
       {
         "Effect": "Allow",
         "Action": [
           "ec2:DescribeInstances",
           "ec2:DescribeVolumes",
           "ec2:AttachVolume",
           "ec2:DetachVolume",
           "ec2:AssignPrivateIpAddresses"
         ],
         "Resource": [
           "*"
         ]
       }
     ]
   }

It is possible to further restrict access using a more sophisticated policy document, for example, to permit the IAM user only to attach/detach the volume ID associated with the |chef server| data volume and not all volumes.
