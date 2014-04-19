.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``app``
     - The name of the application. This is used for the ``/Volumes`` directory and ``.app`` directory that is copied to ``/Applications``. Default value: ``name``.
   * - ``checksum``
     - The |sha256| checksum for the |apple disk image|. If the local file matches the checksum, the |chef client| will not download it. Default value: ``nil``.
   * - ``destination``
     - The directory to which the ``.app`` directory is copied. Default value: ``/Applications``.
   * - ``dmg_name``
     - The name of the |apple disk image| (if it is not the same as the ``app`` attribute or if the name of the application contains spaces). Default value: ``nil``.
   * - ``source``
     - The remote URL for the |apple disk image| to be download. Default value: ``nil``.
   * - ``volumes_dir``
     - The directory under ``/Volumes`` where the |apple disk image| is to be mounted. Default value: ``app``.
