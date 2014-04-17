.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``availability_zone``
     - The name of the availability zone. Each availability zone is unique within a region.
   * - ``aws_access_key``
     - The user name for the secret access key for the API endpoint used with |amazon ec2|.
   * - ``aws_secret_access_key``
     - The password for the secret access key for the API endpoint used with |amazon ec2|.
   * - ``device``
     - The local block device to be attached to an |amazon ebs| volume.
   * - ``size``
     - The size of the volume (in gigabytes).
   * - ``snapshot_id``
     - The identifier used to build an |amazon ebs| volume snapshot.
   * - ``snapshots_to_keep``
     - The number of snapshots to maintain. This attribute is available only when the ``:prune`` action is used. Default value: ``2``.
   * - ``timeout``
     - The connection timeout for the |amazon ec2| API. Default value: ``3 minutes``.
   * - ``volume_id``
     - The identifier for an |amazon ebs| volume.
