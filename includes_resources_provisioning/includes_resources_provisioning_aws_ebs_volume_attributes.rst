.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This |chef provisioning| driver-specific resource has the following properties:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Property
     - Description
   * - ``availability_zone``
     - Use to specify the availability zone in which the block-level storage device is created.
   * - ``aws_tags``
     - |aws_tag|

       .. include:: ../../includes_resources_provisioning/includes_resources_provisioning_aws_attributes_aws_tag_example.rst
   * - ``chef_server``
     - |provisioning_server|
   * - ``device``
     - Use to specify the device to which the block-level storage device is attached. For example: ``'/dev/xvdg'``.
   * - ``driver``
     - |driver_provisioning|
   * - ``encrypted``
     - Use to specify that a block-level storage device should be encrypted.
   * - ``iops``
     - Required for provisioned volumes. Use to specify the maximum number of input/output operations per second (IOPS) that the block-level storage device will support.
   * - ``machine``
     - Use to specify xxxxx.
   * - ``managed_entry_store``
     - |managed_entry_store| For example: ``Chef::Provisioning.chef_managed_entry_store(self.chef_server)``.
   * - ``name``
     - Use to specify the name of the block-level storage device. Because the name of a |amazon vpc| instance is not guaranteed to be unique for an account at |amazon aws|, |chef provisioning| will store the associated identifier on the |chef server| using the ``data/aws_ebs_volume/<name>`` data bag.
   * - ``size``
     - Use to specify the size (in gigabytes) of the block-level storage device.
   * - ``snapshot``
     - Use to specify the name of a `snapshot <http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html>`__ of the block-level storage device. A snapshot is an incremental backups; only blocks on a device that have changed after the most recent snapshot are saved. A snapshot may be deleted; only data exclusive to that snapshot is deleted. The active snapshot contains all of the information needed to restore data to a new block-level storage device.
   * - ``volume_id``
     - Use to specify the identifier for the block-level storage device.
   * - ``volume_type``
     - Use to specify the volume type for the block-level storage device: `general purpose volumes <http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html#EBSVolumeTypes_gp2>`__, `provisioned volumes <http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html#EBSVolumeTypes_piops>`__, or `magnetic volumes <http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html#EBSVolumeTypes_standard>`__.
