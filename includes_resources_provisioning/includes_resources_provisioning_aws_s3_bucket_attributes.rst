.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This |chef provisioning| driver-specific resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``enable_website_hosting``
     - Use to specify if an |amazon s3| bucket is configured for for static website hosting. Default value: ``false``.
   * - ``name``
     - Use to specify the name of the |amazon s3| bucket.
   * - ``options``
     - Use to specify a |ruby hash| that contains xxxxx. Default value: ``{ }``.
   * - ``website_options``
     - Use to specify a |ruby hash| that contains details about support for the index and custom error documents. Default value: ``{ }``.
