.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

The installation process of a |chef server| system requires the use of at least 2 UIDs and GIDS.
The installation process will use these IDs to create the opscode and opscode-pgsql users and their default groups.

To determine the current range of IDs, run the following command:

.. code-block:: bash

   $ grep -E '(UID|GID)' /etc/login.defs

The defaults for |centos| and |redhat enterprise linux| systems look like this

.. code-block:: bash

   UID_MIN			  500
   UID_MAX			60000
   GID_MIN			  500
   GID_MAX			60000

If the above have been changed for any reason, and that change would result in less than 2 UID/GIDs being available to the useradd program,
please edit `/etc/login.defs` with changes to make at least 2 more UID/GIDs available for association.

The currently used id ranges for UIDs and GIDs can be found in `/etc/passwd` and `/etc/group` respectively.
