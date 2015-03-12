.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

To build and mount the storage device on the backend machine, do the following:

#. Create the file system. For example, an ``ext4`` type named ``tiered``:

   .. code-block:: bash
      
      $ mkfs.ext4 /dev/opscode/tiered

   then:

   .. code-block:: bash
      
      $ mkdir -p /var/opt/opscode

   and then:

   .. code-block:: bash
      
      $ mount /dev/opscode/tiered /var/opt/opscode

#. Run the following command:

   .. code-block:: bash
      
      $ sudo chef-server-ctl start

#. Run the following command:

    .. code-block:: bash
      
      $ sudo chef-server-ctl reconfigure
