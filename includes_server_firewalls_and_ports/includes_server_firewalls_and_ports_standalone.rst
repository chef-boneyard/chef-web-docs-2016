.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

For a standalone |chef server oec| installation, and if host-based firewalls (iptables, ufw, etc.) are being used, ensure that the following ports are open:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Port
     - Service
   * - 80
     - |service nginx|
   * - 443
     - |service nginx|

