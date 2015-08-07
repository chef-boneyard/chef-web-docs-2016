=====================================================
|chef provisioning_title|
=====================================================

.. warning:: .. include:: ../../includes_notes/includes_notes_provisioning.rst

.. include:: ../../includes_provisioning/includes_provisioning.rst

In-Parallel Processing
=====================================================
.. include:: ../../includes_provisioning/includes_provisioning_parallel.rst

Drivers
=====================================================
.. include:: ../../includes_provisioning/includes_provisioning_drivers.rst

Driver-specific Resources
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning.rst

Machine Resources
=====================================================
.. include:: ../../includes_resources_common/includes_resources_common.rst


load_balancer
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_load_balancer.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_load_balancer_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_load_balancer_actions.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_load_balancer_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_load_balancer_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


machine
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_machine.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_machine_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_machine_actions.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_machine_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_machine_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Build machines dynamically**

.. include:: ../../step_resource/step_resource_machines_build_machines_dynamically.rst

**Get a remote file onto a new machine**

.. include:: ../../step_resource/step_resource_machine_file_get_remote_file.rst

**Build machines that depend on each other**

.. include:: ../../step_resource/step_resource_machines_codependent_servers.rst

**Use a loop to build many machines**

.. include:: ../../step_resource/step_resource_machines_use_a_loop_to_create_many_machines.rst

**Converge multiple machine types, in-parallel**

.. include:: ../../step_resource/step_resource_machine_batch_multiple_machine_types.rst

**Build a machine from a machine image**

.. include:: ../../step_resource/step_resource_machine_image_add_apache_to_image.rst


machine_batch
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_machine_batch.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_machine_batch_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_machine_batch_actions.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_machine_batch_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_machine_batch_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Set up multiple machines, in-parallel**

.. include:: ../../step_resource/step_resource_machine_batch_setup_n_machines.rst

**Converge multiple machines, in-parallel**

.. include:: ../../step_resource/step_resource_machine_batch_converge_n_machines.rst

**Stop multiple machines, in-parallel**

.. include:: ../../step_resource/step_resource_machine_batch_stop_n_machines.rst

**Destroy multiple machines, in-parallel**

.. include:: ../../step_resource/step_resource_machine_batch_destroy_n_machines.rst

**Converge multiple machine types, in-parallel**

.. include:: ../../step_resource/step_resource_machine_batch_multiple_machine_types.rst


machine_execute
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_machine_execute.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_machine_execute_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_machine_execute_actions.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_machine_execute_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_machine_execute_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


machine_file
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_machine_file.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_machine_file_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_machine_file_actions.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_machine_file_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_machine_file_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Get a remote file onto a new machine**

.. include:: ../../step_resource/step_resource_machine_file_get_remote_file.rst


machine_image
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_machine_image.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_machine_image_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_machine_image_actions.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_machine_image_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_machine_image_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Build a machine from a machine image**

.. include:: ../../step_resource/step_resource_machine_image_add_apache_to_image.rst

AWS Driver Resources
=====================================================
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning.rst

The following driver-specific resources are available for |amazon aws| and |chef provisioning|:

* ``aws_auto_scaling_group``
* ``aws_cache_cluster``
* ``aws_cache_replication_group``
* ``aws_cache_subnet_group``
* ``aws_dhcp_options``
* ``aws_ebs_volume``
* ``aws_eip_address``
* ``aws_image``
* ``aws_instance``
* ``aws_internet_gateway``
* ``aws_key_pair``
* ``aws_launch_configuration``
* ``aws_load_balancer``
* ``aws_network_acl``
* ``aws_network_interface``
* ``aws_route_table``
* ``aws_s3_bucket``
* ``aws_security_group``
* ``aws_server_certificate``
* ``aws_sns_topic``
* ``aws_sqs_queue``
* ``aws_subnet``
* ``aws_vpc``

.. 
.. Getting Started
.. -----------------------------------------------------
.. Use |chef provisioning| to create machines and define how they are connected to each other. To use |chef provisioning| for configuration of these machines on |amazon aws| a node must first be created that can act as the provisioner machine. This node must
.. 
.. #. Have the |chef client| installed on it
.. #. Have |chef provisioning| installed on it, along with the ``chef-provisioning-aws`` |gem|
.. #. Be configured to talk to |amazon aws| via the |amazon aws| APIs (to request instances, load balancers, and so on)
.. #. Have credentials that allow access to perform any desired operation, such as creating and/or deleting an instance in |amazon ec2|
.. 
.. After an instance is provisioned, use a normal |chef client| run to fine-tune that machine. For example, updating configuration settings, installing packages, and so on.
.. 

Common Actions
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_actions.rst

aws_auto_scaling_group
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_auto_scaling_group.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_auto_scaling_group_syntax.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_auto_scaling_group_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Define an auto scaling group**

.. code-block:: ruby

   aws_auto_scaling_group 'my-awesome-auto-scaling-group' do
     desired_capacity 3
     min_size 1
     max_size 5
     launch_config 'my-sweet-launch-config'
   end


aws_cache_cluster
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_cache_cluster.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_cache_cluster_syntax.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_cache_cluster_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.



aws_cache_replication_group
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_cache_replication_group.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_cache_replication_group_syntax.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_cache_replication_group_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


aws_cache_subnet_group
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_cache_subnet_group.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_cache_subnet_group_syntax.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_cache_subnet_group_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.



aws_dhcp_options
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_dhcp_options.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_dhcp_options_syntax.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_dhcp_options_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Create an option set**

.. code-block:: ruby

   aws_dhcp_options 'ref-dhcp-options' do
     domain_name 'example.com'
     domain_name_servers %w(8.8.8.8 8.8.4.4)
     netbios_name_servers %w(8.8.8.8 8.8.4.4)
     netbios_node_type 2
     aws_tags :chef_type => "aws_dhcp_options"
   end

**Destroy an option set**

.. code-block:: ruby

   aws_dhcp_options 'ref-dhcp-options' do
     action :destroy
   end



aws_ebs_volume
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_ebs_volume.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_ebs_volume_syntax.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_ebs_volume_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Create**

.. code-block:: ruby

   aws_ebs_volume 'ref-volume-ebs' do
     availability_zone 'a'
     size 1
   end

**Attach to a machine**

.. code-block:: ruby

   aws_ebs_volume 'ref-volume-ebs' do
     machine 'ref-machine-1'
     device '/dev/xvdf'
   end

**Reattach to a different device**

.. code-block:: ruby

   aws_ebs_volume 'ref-volume-ebs' do
     device '/dev/xvdg'
   end

**Reattach to a different machine**

.. code-block:: ruby

   aws_ebs_volume 'ref-volume-ebs' do
     machine 'ref-machine-2'
     device '/dev/xvdf'
   end

**Skip reattaching**

.. code-block:: ruby

   aws_ebs_volume 'ref-volume-ebs' do
     machine 'ref-machine-2'
     device '/dev/xvdf'
   end

**Create and attach**

.. code-block:: ruby

   aws_ebs_volume 'ref-volume-ebs-2' do
     availability_zone 'a'
     size 1
     machine 'ref-machine-1'
     device '/dev/xvdf'
   end

**Detach**

.. code-block:: ruby

   aws_ebs_volume 'ref-volume-ebs' do
     machine false
   end

**Delete**

.. code-block:: ruby

   ['ref-volume-ebs', 'ref-volume-ebs-2'].each { |volume|
     aws_ebs_volume volume do
       action :destroy
     end
   }




aws_eip_address
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_eip_address.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_eip_address_syntax.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_eip_address_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Associate existing IP address with Chef**

.. code-block:: ruby

   aws_eip_address 'frontend_ip' do
     public_ip '205.32.21.0'
   end



aws_image
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_image.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_image_syntax.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_image_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


aws_instance
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_instance.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_instance_syntax.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_instance_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.


aws_internet_gateway
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_internet_gateway.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_internet_gateway_syntax.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_internet_gateway_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Create an internet gateway**

.. code-block:: ruby

   aws_internet_gateway 'name' do
     internet_gateway_id '1234567890'
   end


aws_key_pair
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_key_pair.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_key_pair_syntax.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_key_pair_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Create a private key, regenerate it if necessary**

.. code-block:: ruby

   aws_key_pair 'ref-key-pair' do
     private_key_options({
       :format => :pem,
       :type => :rsa,
       :regenerate_if_different => true
     })
     allow_overwrite true
   end

aws_launch_configuration
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_launch_configuration.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_launch_configuration_syntax.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_launch_configuration_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Define an AMI instance type**

.. code-block:: ruby

   aws_launch_configuration 'ref-launch-configuration' do
     image 'ref-machine_image1'
     instance_type 't1.micro'
     options security_groups: 'ref-sg1'
   end


aws_load_balancer
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_load_balancer.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_load_balancer_syntax.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_load_balancer_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.

aws_network_acl
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_network_acl.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_network_acl_syntax.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_network_acl_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.

aws_network_interface
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_network_interface.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_network_interface_syntax.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_network_interface_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Define a network interface**

.. code-block:: ruby

   aws_network_interface 'ref-eni-1' do
     machine 'ref-machine-eni-1'
     subnet 'ref-subnet-eni'
     security_groups ['ref-sg1-eni']
     description 'ref-eni-desc'
   end

aws_route_table
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_route_table.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_route_table_syntax.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_route_table_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Define a route table**

.. code-block:: ruby

   aws_route_table 'ref-public1' do
     vpc 'test-vpc'
     routes '0.0.0.0/0' => :internet_gateway
   end

aws_s3_bucket
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_s3_bucket.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_s3_bucket_syntax.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_s3_bucket_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Delete a security group**

.. code-block:: ruby

   aws_s3_bucket 'aws-bucket' do
     enable_website_hosting true
     website_options :index_document => { :suffix => "index.html" },
                     :error_document => { :key => "not_found.html" }
   end


aws_security_group
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_security_group.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_security_group_syntax.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_security_group_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Delete a security group**

.. code-block:: ruby

   aws_security_group 'test-sg' do
     vpc 'test-vpc'
     action :delete
   end	

**Define inbound rules**

.. code-block:: ruby

   aws_security_group 'ref-sg1-eni' do
     vpc 'ref-vpc-eni'
     inbound_rules 'ref-sg1-eni' => 2224
   end


aws_server_certificate
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_server_certificate.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_server_certificate_syntax.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_server_certificate_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.

aws_sns_topic
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_sns_topic.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_sns_topic_syntax.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_sns_topic_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Create an SNS topic named "seapower"**

.. code-block:: ruby

   aws_sns_topic 'seapower' do
     arn 'arn:aws:sns:us-west-1:5060091557628:seapower'
   end

**Delete an SNS topic**

.. code-block:: ruby

   aws_sns_topic 'ref-sns-topic' do
     action :destroy
   end


aws_sqs_queue
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_sqs_queue.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_sqs_queue_syntax.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_sqs_queue_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Create an SQS queue**

.. code-block:: ruby

   aws_sqs_queue 'ref-sqs-queue'

**Delete an SQS queue**

.. code-block:: ruby

   aws_sqs_queue 'ref-sqs-queue' do
     action :destroy
   end


aws_subnet
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_subnet.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_subnet_syntax.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_subnet_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Remove the default subnet**

.. code-block:: ruby

   aws_subnet "default" do
     availability_zone availability_zone
     action :destroy
   end

**Add a public subnet**

.. code-block:: ruby

   aws_subnet "public-#{availability_zone}" do
     availability_zone availability_zone
     cidr_block "10.0.#{128+class_c}.0/24"
     route_table 'public-routes'
     map_public_ip_on_launch true
   end

aws_vpc
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_vpc.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_vpc_syntax.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_vpc_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++

**Add a defined virtual network (VPC)**

.. code-block:: ruby

   aws_vpc 'test-vpc' do
     cidr_block '10.0.0.0/24'
     internet_gateway true
   end

**Add a defined virtual network (VPC) with route table**

.. code-block:: ruby

   aws_vpc "provisioning-vpc" do
     cidr_block "10.0.0.0/24"
     internet_gateway true
     main_routes '0.0.0.0/0' => :internet_gateway
   end



|fog| Driver Resources
=====================================================
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning.rst

The following driver-specific resources are available for |fog| and |chef provisioning|:

* ``fog_key_pair``

fog_key_pair
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_fog_key_pair.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_fog_key_pair_syntax.rst

Properties
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_fog_key_pair_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
None.
