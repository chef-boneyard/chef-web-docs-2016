.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the following steps to set up the secondary backend |chef server|:

#. Repeat the same steps as described for the primary machine.

#. Create the ``/etc/opscode/`` directory, and then copy the entire contents of the ``/etc/opscode`` directory from the primary backend machine, including all certificates and the |chef server rb| file.

#. Reconfigure the |chef server|:

   .. code-block:: bash
      
      $ sudo chef-server-ctl reconfigure

   This will configure |drbd|. The installer will pause and ask for confirmation that |drbd| has been set up. Confirm (``CTRL-C``), and then run the following commands:

   .. code-block:: bash
      
      $ drbdadm create-md pc0

   then:

   .. code-block:: bash
      
      $ drbdadm up pc0
