.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

The installation process for the |chef server| requires the use of at least 2 user and group identifiers (UIDs and GIDs). These are used to create the ``opscode`` and ``opscode-pgsql`` users and their default groups.

.. note:: The creation of required user and group identifiers is done **automatically** during the installation process for the |chef server|; however, the following user and group accounts **may** be created in advance of installing the |chef server| if specific UIDs and/or GIDs are preferred.

   * A local user account under which services will run
   * A local user account for |postgresql|
   * A group account under which services will run

   To determine the current range of IDs, run the following command:

   .. code-block:: bash

      $ grep -E '(UID|GID)' /etc/login.defs

   The defaults for |centos| and |redhat enterprise linux| systems look like this:

   .. code-block:: bash

      UID_MIN             500
      UID_MAX           60000
      GID_MIN             500
      GID_MAX           60000

   If the defaults have been changed for any reason, and if that change would result in less than 2 UID/GIDs being available to the ``useradd`` program, edit ``/etc/login.defs`` with changes to make at least 2 more UIDs and GIDs available for association. The currently used ID ranges for UIDs and GIDs can be found in ``/etc/passwd`` and ``/etc/group``, respectively.

   If the ``opscode`` and ``opscode-pgsql`` user and group identifiers exist prior to installing the |chef server|, the |chef server| installation process will use the existing identifiers instead of creating them.
