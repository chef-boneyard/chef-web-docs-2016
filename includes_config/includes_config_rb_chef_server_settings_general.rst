.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``api_fqdn``
     - The |fqdn| for the |chef server|. This setting is not in the |enterprise rb| file by default. When added, its value should be equal to the |fqdn| for the service URI used by the |chef server|. Then configure the same value for the ``bookshelf['vip']`` setting prior to installing |chef server oec|. For example: ``api_fqdn "chef.example.com"``.
   * - ``bootstrap``
     - Default value: ``true``.
   * - ``default_orgname``
     - The |api chef server| used by the |chef server osc| server does not have an ``/organizations/ORG_NAME`` endpoint. Use this setting to ensure that migrated |chef server osc| servers are able to connect to the |api chef server|. This value should be the same as the name of the organization that was created during the upgrade from |chef server osc| version 11 to |chef server| version 12, which means it will be identical to the ``ORG_NAME`` part of the ``/organizations`` endpoint in |chef server| version 12.
   * - ``ip_version``
     - Use to enable IPv6 and run |chef server osc| in "dual IPv4/IPv6 mode". When this setting is ``ipv6``, the |chef server osc| server will use IPv6 for all internal comunication and will be able to accept external communications that are using IPv6 (via the |nginx| load balancer). Default value: ``ipv4``.

       .. note:: Setting ``ip_version`` to true will also set ``nginx['enable_ipv6']`` to ``true``.
   * - ``notification_email``
     - Default value: ``info@example.com``.
   * - ``topology``
     - Default value: ``standalone``.

