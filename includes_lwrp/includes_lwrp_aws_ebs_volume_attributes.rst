.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``availability_zone``
     - |name availability_zone|
   * - ``aws_access_key``
     - |aws_access_key_username|
   * - ``aws_secret_access_key``
     - |aws_access_key_password|
   * - ``device``
     - |device aws_ebs_volume|
   * - ``size``
     - |size volume|
   * - ``snapshot_id``
     - |id aws_snapshot|
   * - ``snapshots_to_keep``
     - |snapshots_to_keep| Default value: ``2``.
   * - ``timeout``
     - |timeout aws_ec2| Default value: ``3 minutes``.
   * - ``volume_id``
     - |id ebs_volume|
