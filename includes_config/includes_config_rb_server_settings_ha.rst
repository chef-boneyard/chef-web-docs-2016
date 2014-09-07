.. The contents of this file are included in multiple topics.
.. THIS FILE SHOULD NOT BE MODIFIED VIA A PULL REQUEST.

This configuration file has the following settings for ``ha``:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``ha['aws_access_key_id']``
     - |aws_access_key_id|
   * - ``ha['aws_secret_access_key']``
     - |aws_access_key_secret|
   * - ``ha['ebs_volume_id']``
     - The identifier for the |amazon ebs| volume.
   * - ``ha['provider']``
     - The provider that is used for a high availability configuration. Possible values: ``drbd``, ``aws``. Use ``aws`` to configure the |chef server| for high availability using |amazon aws|. Use ``drbd`` to configure the |chef server| for high availability using |drbd|. Default value: ``drbd``.