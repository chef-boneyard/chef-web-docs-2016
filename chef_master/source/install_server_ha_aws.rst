.. This page is the Chef 12 server install page, for high availablty in AWS.

=====================================================
High Availability: |amazon aws|
=====================================================

This topic describes how to set up the |chef server| for high availability when running the |chef server| in |amazon aws|.

Requirements
=====================================================
Running the |chef server| for high availability in |amazon aws| has the following requirements:

* Each backend |chef server| must be in an |amazon ebs| volume; the |chef server| may be attached to an |amazon ebs| volume through the |amazon aws| console or via the command line
* Each backend |chef server| must be running the same platform and version
* A VIP IP address must exist and should be in the same network segment as the backend machines; for example: ``172.31.24.180``. The VIP IP address must be specified in the |chef server rb| file
* The |amazon vpc| security group must allow ICMP between the backend machines; |keepalived| uses it for communication/heartbeat when in unicast mode
* The frontend machines must be able to communicate with the backend VIP IP address

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

#. Create a file named |chef server rb| that is located in the ``/etc/opscode/`` directory. See the |chef server rb| section below for an example of the settings and values that are required. The ``ha['ebs_device']`` setting must specify the actual ``/dev`` device name that is reported by the machine's kernel, which may not be the same value that is reported by |amazon aws|.

#. Install ``lvm2``. For |redhat| and |centos| 6:

   .. code-block:: bash
      
      $ sudo yum install lvm2

   For |ubuntu|:

   .. code-block:: bash
      
      $ sudo apt-get install lvm2

#. Configure ``lvm2`` with the following series of commands:

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
      
      $ sudo lvcreate -l 85%VG -n data chef

   then:

   .. code-block:: bash
      
      $ sudo mkdir -p /var/opt/opscode/drbd/data

   then:

   .. code-block:: bash
      
      $ sudo mkfs.ext4 /dev/mapper/chef-data

   and then:

   .. code-block:: bash
      
      $ sudo mount /dev/mapper/chef-data /var/opt/opscode/drbd/data

#. Run the following command:

   .. code-block:: bash
      
      $ sudo chef-server-ctl reconfigure

   This will reconfigure the |chef server|, start |keepalived|, grab the VIP IP address, and then configure the machine as the primary backend server.

#. Verify the machine is the primary backend server:

   .. code-block:: bash
      
      $ sudo chef-server-ctl ha-status

   ``ip addr list dev eth0`` should show the VIP IP address configured as an alias on ``eth0``.

Secondary Backend
=====================================================
Use the following steps to set up the secondary backend |chef server|:

#. Create an |amazon ebs| volume and attach it to the secondary backend.
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

#. Install ``lvm2``. For |redhat| and |centos| 6:

   .. code-block:: bash
      
      $ sudo yum install lvm2

   For |ubuntu|:

   .. code-block:: bash
      
      $ sudo apt-get install lvm2

#. Configure ``lvm2`` with the following series of commands:

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
      
      $ sudo lvcreate -l 85%VG -n data chef

   then:

   .. code-block:: bash
      
      $ sudo mkdir -p /var/opt/opscode/drbd/data

   then:

   .. code-block:: bash
      
      $ sudo mkfs.ext4 /dev/mapper/chef-data

   and then:

   .. code-block:: bash
      
      $ sudo mount /dev/mapper/chef-data /var/opt/opscode/drbd/data

#. Create the ``/etc/opscode/`` directory, and then copy the |chef server rb| file from the primary backend to the secondary. The settings will be identical in both files.

#. Run the following command:

   .. code-block:: bash
      
      $ sudo chef-server-ctl reconfigure

   This will reconfigure the |chef server|, start |keepalived|, grab the VIP IP address, and then configure the machine as the secondary backend server.

#. Verify the machine is the secondary backend server:

   .. code-block:: bash
      
      $ sudo chef-server-ctl ha-status

   ``ip addr list dev eth0`` should show the VIP IP address configured as an alias on ``eth0``.


Verify Failover
=====================================================
To verify that failover is working, run one (or both) of the following commands:

#. Stop |keepalived| on the primary backend machine:

   .. code-block:: bash
      
      $ sudo chef-server-ctl stop keepalived

   A cluster failover should occur.

#. View status using the ``ha-status`` subcommand for the |chef server ctl| command:

   .. code-block:: bash
      
      $ watch -n1 sudo chef-server-ctl ha-status

Frontend
=====================================================
Use the following steps to set up each frontend |chef server|:

#. Create an |amazon ebs| volume and attach it to the secondary backend.
#. Install the ``chef-server-core`` package. For |redhat| and |centos| 6:

   .. code-block:: bash
      
      $ rpm -Uvh /tmp/chef-server-core-<version>.rpm

   For |ubuntu|:

   .. code-block:: bash
      
      $ dpkg -i /tmp/chef-server-core-<version>.deb

   After a few minutes, the |chef server| will be installed.

#. Create the ``/etc/opscode/`` directory, and then copy the |chef server rb| file from the primary backend to the frontend. The only setting that is required is ``topology "ha"``.

#. Enable the premium features of the |chef server|! For each of the premium features you want to install, run the following commands:

   .. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_table.rst

#. Run the following command:

   .. code-block:: bash
      
      $ sudo chef-server-ctl reconfigure

   This will reconfigure the |chef server|, start |keepalived|, grab the VIP IP address, and then configure the machine as the secondary backend server.


|chef server rb|
=====================================================
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
=====================================================
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
