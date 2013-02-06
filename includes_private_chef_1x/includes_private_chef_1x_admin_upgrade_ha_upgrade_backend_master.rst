.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

On RedHat RPM based systems run rpm with the appropriate upgrade flags and with the new RPM to be installed:

.. code-block:: bash

   $ rpm -Uvh private-chef-1.1.10-1.el6.x86_64.rpm

On |ubuntu| or |debian| deb-package based systems run |dpkg| with the install flag:

.. code-block:: bash

   $ dpkg -i private-chef_1.1.10-1.ubuntu.10.04_amd64.deb

After installing the upgraded package, you must instruct |private chef ctl| to update the configuration and perform the upgrade:

   $ private-chef-ctl upgrade