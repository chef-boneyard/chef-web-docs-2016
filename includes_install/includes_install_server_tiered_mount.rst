.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

To mount the storage device on the backend machine, do the following:

#. Mount the file system. For example, a file system named ``ext4``:

   .. code-block:: bash
      
      $ mkfs.ext4 /dev/drbd0

   then:

   .. code-block:: bash
      
      $ mkdir -p /var/opt/opscode/drbd/data

   and then:

   .. code-block:: bash
      
      $ mount /dev/drbd0 /var/opt/opscode/drbd/data

#. Reconfigure the backend machine:

   .. code-block:: bash
      
      $ sudo chef-server-ctl reconfigure

