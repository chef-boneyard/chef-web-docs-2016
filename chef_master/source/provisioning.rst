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

.. code-block:: ruby

   aws_vpc "provisioning-vpc" do
     cidr_block "10.0.0.0/24"
     internet_gateway true
     main_routes '0.0.0.0/0' => :internet_gateway
   end

.. code-block:: ruby

   aws_vpc 'test-vpc' do
     cidr_block '10.0.0.0/24'
     internet_gateway true
   end
