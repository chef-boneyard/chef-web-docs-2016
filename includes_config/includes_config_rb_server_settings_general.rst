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
     - Use to specify the location from which add-on packages are downloaded. This may be a local or a remote path.
   * - ``private_chef['api_version']``
     - |version chef_server| Default value: ``"11.1.0"``.
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

