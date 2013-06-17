.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Atomic updates are used with |resource file|-based resources to help ensure that file updates can be made when updating a binary or if disk space runs out.

Atomic updates are enabled by default. They can be managed globally using the ``file_atomic_update`` attribute in the |rb client| file. They can be managed on a per-resource basis using the ``atomic_update`` attribute that is available with the |resource cookbook_file|, |resource file|, |resource remote_file|, and |resource template| resources.

.. note:: On the |selinux| and |windows| platforms |chef| will fix up the permissions after a file has been moved into the correct location. For the |selinux| platform, |chef| will apply the correct permissions by running the ``restorecon`` command. For the |windows| platform, |chef| will create files so that ACL inheritance works as expected.
