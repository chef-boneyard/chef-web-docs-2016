.. The contents of this file are included in multiple topics.
.. THIS FILE SHOULD NOT BE MODIFIED VIA A PULL REQUEST.

This configuration file has the following general settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``enterprise['name']``
     - |name chef_server| Default value: ``"private_chef"``.
   * - ``private_chef['addons']['path']``
     - Use to specify a local path from which packages are installed. When a local path is not specified, packages are installed from |company_name|-mangaed |apt| or |yum| repositories. A proxy may be configured to access the |apt| or |yum| repositories.
   * - ``private_chef['api_version']``
     - |version chef_server| Default value: ``"11.1.0"``.
   * - ``default_orgname``
     - The |api chef server| used by the |chef server osc| server does not have an ``/organizations/ORG_NAME`` endpoint. Use this setting to ensure that migrated |chef server osc| servers are able to connect to the |api chef server|. This value should be the same as the name of the organization that was created during the upgrade from |chef server osc| version 11 to |chef server| version 12, which means it will be identical to the ``ORG_NAME`` part of the ``/organizations`` endpoint in |chef server| version 12.
   * - ``private_chef['flavor']``
     - Default value: ``"ec"``.
   * - ``private_chef['from_email']``
     - Default value: ``'"Opscode" <donotreply@opscode.com>'``.
   * - ``private_chef['install_path']``
     - |directory chef_server| Default value: ``"/opt/opscode"``.
   * - ``private_chef['notification_email']``
     - |email chef_server| Default value: ``"pc-default@opscode.com"``.
   * - ``private_chef['license']['nodes']``
     - |license chef_server| Default value: ``25``.
   * - ``private_chef['license']['upgrade_url']``
     - Default value: ``"http://example.com"``.
   * - ``private_chef['role']``
     - |role chef_server| Default value: ``"standalone"``.

