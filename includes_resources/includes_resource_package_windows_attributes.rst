.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``checksum``
     - |checksum remote_file| Use when a URL is specified by the ``source`` attribute.
   * - ``installer_type``
     - |type package| Possible values: ``:msi``.
   * - ``options``
     - |command options|
   * - ``provider``
     - Optional. |provider resource_parameter| |see providers|
   * - ``remote_file_attributes``
     - |remote_file_attributes|
   * - ``returns``
     - |returns| This code signals a successful ``:install`` action. Default value: ``0``.
   * - ``source``
     - Optional. |source resource package| The location of the package may be at a URL. Default value: the ``name`` of the resource block. |see syntax|
   * - ``timeout``
     - |timeout| Default value: ``600`` (seconds).
