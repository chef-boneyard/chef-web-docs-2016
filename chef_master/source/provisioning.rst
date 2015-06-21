=====================================================
|chef provisioning_title|
=====================================================

.. warning:: |warning provisioning|

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

Attributes
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

Attributes
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

Attributes
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

Attributes
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

Attributes
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

Attributes
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
* ``aws_network_interface``
* ``aws_route_table``
* ``aws_s3_bucket``
* ``aws_security_group``
* ``aws_sns_topic``
* ``aws_sqs_queue``
* ``aws_subnet``
* ``aws_vpc``


aws_route_table
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_route_table.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_route_table_syntax.rst

Attributes
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

Attributes
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

Attributes
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


aws_sns_topic
-----------------------------------------------------
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_sns_topic.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_sns_topic_syntax.rst

Attributes
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

Attributes
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

Attributes
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

Attributes
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
