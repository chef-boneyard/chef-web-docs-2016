.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``state_attrs`` method is used to define the properties that will be tracked by the |reporting| server. In general, this should be a list of properties that describe the desired state of the system, such as file permissions, cloud provider data (like snapshots, volumes, identifiers, sizes, and access keys), and so on.

The syntax for the ``state_attrs`` method is as follows:

.. code-block:: ruby

   state_attrs :property, 
               :property, 
               :property

where ``:property`` is a comma-delimited list of properties. For example, the ``ebs_volume`` resource (available from the `aws <https://github.com/chef-cookbooks/aws>`_ cookbook) uses the ``state_attrs`` method to tell the |reporting| server to track the following properties:

.. code-block:: ruby

   state_attrs :availability_zone,
               :aws_access_key,
               :description,
               :device,
               :most_recent_snapshot,
               :piops,
               :size,
               :snapshot_id,
               :snapshots_to_keep,
               :timeout,
               :volume_id,
               :volume_type
