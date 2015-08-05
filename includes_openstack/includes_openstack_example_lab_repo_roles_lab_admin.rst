.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This role is for the admin node that provides DHCP, DNS, TFTP, PXE-booting and apt repository proxying.

.. code-block:: ruby

   name 'lab-admin'
   description 'Default run_list for the Admin node'
   run_list(
     'recipe[apt::cacher-ng]',
     'recipe[apt::cacher-client]',
     'recipe[ntp]',
     'recipe[openssh]',
     'recipe[users::sysadmins]',
     'recipe[sudo]',
     'recipe[chef-client]',
     'recipe[pxe_dust::server]'
     )
