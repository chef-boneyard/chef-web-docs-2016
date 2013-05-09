.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Both of the back-end servers must have |drbd| installed:

.. code-block:: bash

   $ rpm --import http://elrepo.org/RPM-GPG-KEY-elrepo.org
   $ yum install -y http://elrepo.org/elrepo-release-6-5.el6.elrepo.noarch.rpm
   $ yum install -y drbd84-utils kmod-drbd84

.. note:: The |elrepo| provides updated drivers for the |linux| family of enterprise distributions (based on |redhat enterprise linux|.) With the introduction of |redhat enterprise linux| 6, |redhat| no longer distributes |drbd| within the kernel. These modules provide properly built, community tested releases of the required kernel and |drbd| userland.

For |ubuntu|:

.. code-block:: bash

   $ apt-get install drbd8-utils
