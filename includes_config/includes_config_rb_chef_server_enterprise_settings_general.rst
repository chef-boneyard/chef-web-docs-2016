.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following general settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``api_fqdn``
     - The |fqdn| for the |chef server|. This setting is not in the |enterprise rb| file by default. When added, its value should be equal to the |fqdn| for the service URI used by the |chef server|. Then configure the same value for the ``bookshelf['vip']`` setting prior to installing |chef server oec|. For example: ``api_fqdn "chef.example.com"``.
   * - ``bookshelf['vip']``
     - |ip_address virtual| Default value: ``node['fqdn']``. (This setting is related to the |service bookshelf| service.)
   * - ``bootstrap``
     - Default value: ``true``.
   * - ``ip_version``
     - Use to set the IP version: ``ipv4`` or ``ipv6``. When configuring for IPv6 in a high availability configuration, be sure to set the netmask on the IPv6 ``backend_vip`` attribute. Default value: ``ipv4``.
   * - ``notification_email``
     - Default value: ``info@example.com``.
