.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |chef server| |amazon ami| can perform in-place upgrades of all of the pre-bundled software making it easy to stay up to date with the latest version of the |chef server| and the |chef manage|, |reporting| and Marketplace add-on's while not requiring you to migrate your data to the latest published |amazon ami|.

#. Upgrade the |chef server|, |chef manage| and |reporting| using the following command:

   .. code-block:: bash

      $ sudo chef-marketplace-ctl upgrade -s

   .. note:: The |chef server| will be unavailable while the software is in the process of being updated.

#. Upgrade the Marketplace add-on using the following command:

   .. code-block:: bash

      $ sudo chef-marketplace-ctl upgrade -m

# If you'd like to update all four packages run the following command:

   .. code-block:: bash

      $ sudo chef-marketplace-ctl upgrade -y
