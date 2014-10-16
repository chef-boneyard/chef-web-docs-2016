.. The contents of this file are included in multiple topics.
.. THIS FILE SHOULD NOT BE MODIFIED VIA A PULL REQUEST.

This configuration file has the following general settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``addons['install']``
     - Default value: ``false``.
   * - ``addons['path']``
     - Default value: ``nil``.
   * - ``addons['packages']``
     - Default value: ``%w{opscode-reporting opscode-manage opscode-analytics opscode-push-jobs-server}``.
   * - ``api_version``
     - |version chef_server| Default value: ``"12.0.0"``.
   * - ``default_orgname``
     - The |api chef server| used by the |chef server osc| server does not have an ``/organizations/ORG_NAME`` endpoint. Use this setting to ensure that migrated |chef server osc| servers are able to connect to the |api chef server|. This value should be the same as the name of the organization that was created during the upgrade from |chef server osc| version 11 to |chef server| version 12, which means it will be identical to the ``ORG_NAME`` part of the ``/organizations`` endpoint in |chef server| version 12. Default value: the name of the organization specified during the upgrade process from |chef server osc| 11 to |chef server| 12.
   * - ``flavor``
     - Default value: ``"cs"``.
   * - ``install_path``
     - |directory chef_server| Default value: ``"/opt/opscode"``.
   * - ``from_email``
     - Default value: ``'"Opscode" <donotreply@opscode.com>'``.
   * - ``license['nodes']``
     - |license chef_server| Default value: ``25``.
   * - ``license['upgrade_url']``
     - The URL to visit to learn more about how to update the number of nodes licensed for your organization. Default value: ``"http://www.getchef.com/contact/on-premises-simple"``.
   * - ``notification_email``
     - |email chef_server| Default value: ``"pc-default@opscode.com"``.
   * - ``role``
     - |role chef_server| Default value: ``"standalone"``.
   * - ``topology``
     - The topology of the |chef server|. Possible values: ``ha``, ``manual``, ``standalone``, and ``tier``. Default value: ``"standalone"``.
