.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``state_attrs`` method is used to define the attributes that will be tracked by the |reporting| server. In general, this should be a list of attributes that describe the desired state of the system, such as file permissions, cloud provider data (like snapshots, volumes, identifiers, sizes, and access keys), and so on.

.. note:: This method only works with the |reporting| add-on for |chef server oec|.

The syntax for the ``state_attrs`` method is as follows:

.. code-block:: ruby

   state_attrs :attribute, 
               :attribute, 
               :attribute

where ``attribute`` is a comma-delimited list of attributes. For example, the |lwrp aws ebs volume| resource uses the ``state_attrs`` method to tell the |reporting| server to track the following attributes:

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



