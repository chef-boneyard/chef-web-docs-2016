.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Atomic updates can be used with certain resource to help ensure that file updates can be made when updating a binary or when disk space runs out. In certain situations, atomic updates may alter file permissions on the |selinux| and |windows| platforms when running as a non-root user. Atomic updates may be set globally using the ``file_atomic_update`` attribute in the |rb client| file. However, it is recommended to only enable atomic updates on a per-resource basis using the ``atomic_update`` attribute that is available with the |resource cookbook_file|, |resource file|, |resource remote_file|, or |resource template| resources.

.. note:: Because atomic updates may alter file permissions in the |selinux| and |windows| platforms, files may end up with incorrect permissions. For |selinux|, |chef| will run ``restorecon`` after a file is updated to attempt to apply the correct permissions. For |windows|, |chef| will create files so that ACL inheritance works as expected.

