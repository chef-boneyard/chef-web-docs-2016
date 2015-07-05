.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``checksum``
     - **Ruby Type:** String

       |checksum remote_file| Use when a URL is specified by the ``source`` attribute.
   * - ``installer_type``
     - **Ruby Type:** Symbol

       |type package| Possible values: ``:msi``.
   * - ``options``
     - **Ruby Type:** String

       |command options|
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter| |see providers|
   * - ``remote_file_attributes``
     - **Ruby Type:** Hash

       |remote_file_attributes|
   * - ``returns``
     - **Ruby Types:** String, Integer, Array

       |returns| This code signals a successful ``:install`` action. Default value: ``0``.
   * - ``source``
     - **Ruby Type:** String

       Optional. |source resource package| The location of the package may be at a URL. |resource_block_default| |see syntax|
   * - ``timeout``
     - **Ruby Types:** String, Integer

       |timeout| Default value: ``600`` (seconds).
