.. The contents of this file are included in multiple topics.
.. THIS FILE SHOULD NOT BE MODIFIED VIA A PULL REQUEST.

This configuration file has the following general settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``enterprise['name']``
     - The name of the |chef server| configuration. Default value: ``"private_chef"``.
   * - ``private_chef['api_version']``
     - The version of the |chef server|. Default value: ``"11.1.0"``.
   * - ``private_chef['flavor']``
     - Default value: ``"ec"``.
   * - ``private_chef['from_email']``
     - Default value: ``'"Opscode" <donotreply@opscode.com>'``.
   * - ``private_chef['install_path']``
     - The directory in which the |chef server| is installed. Default value: ``"/opt/opscode"``.
   * - ``private_chef['notification_email']``
     - The email addressed to which email notifications are sent. Default value: ``"pc-default@opscode.com"``.
   * - ``private_chef['license']['nodes']``
     - The number of |chef server| licenses. Default value: ``25``.
   * - ``private_chef['license']['upgrade_url']``
     - Default value: ``"http://example.com"``.
   * - ``private_chef['role']``
     - The configuration for the |chef server|. Possible values: ``ha``, ``tiered``, ``standalone``. Default value: ``"standalone"``.

