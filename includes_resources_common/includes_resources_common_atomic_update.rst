.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Atomic updates are used with |resource file|-based resources to help ensure that file updates can be made when updating a binary or if disk space runs out.

Atomic updates are enabled by default. They can be managed globally using the ``file_atomic_update`` setting in the |client rb| file. They can be managed on a per-resource basis using the ``atomic_update`` property that is available with the |resource cookbook_file|, |resource file|, |resource remote_file|, and |resource template| resources.

.. note:: On certain platforms, and after a file has been moved into place, the |chef client| may modify file permissions to support features specific to those platforms. On platforms with |selinux| enabled, the |chef client| will fix up the security contexts after a file has been moved into the correct location by running the ``restorecon`` command. On the |windows| platform, the |chef client| will create files so that ACL inheritance works as expected.
