.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This |chef provisioning| driver-specific resource has the following properties:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Property
     - Description
   * - ``driver_options``
     - **Ruby Type:** Hash

       Use to specify driver options.
   * - ``name``
     - **Ruby Type:** String

       The name of the |vagrant| box.
   * - ``vagrant_provider``
     - **Ruby Type:** String

       The name of the provider for |vagrant|. Default value: ``virtualbox``.
   * - ``url``
     - **Ruby Type:** String

       The URL from which the |vagrant| box is downloaded.
