.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Requirement
     - Description
   * - Processor
     - 4 total cores, 2.0 GHz AMD 41xx/61xx or Intel Xeon 5000/E5 CPUs or faster
   * - RAM
     - 4 GB of RAM
   * - Disk space
     - 5 GB of free disk space in ``/opt`` and 5 GB of free disk space in ``/var``
   * - Firewalls and ports
     - If host-based firewalls (iptables, ufw, etc.) are being used, ensure that ports 80 and 443 are open. These ports are used by the |service nginx| service.
   * - Hostname
     - The hostname for the |chef server| must be a |fqdn|, including the domain suffix, and must be resolvable. See `Hostnames, FQDNs <http://docs.opscode.com/install_server_pre.html#hostnames-fqdns>`_ for more information.
