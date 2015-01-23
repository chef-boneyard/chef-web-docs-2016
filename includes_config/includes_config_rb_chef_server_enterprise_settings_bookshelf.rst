.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |service bookshelf| service has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``bookshelf['access_key_id']``
     - Default value: ``generated-by-default``.
   * - ``bookshelf['data_dir']``
     - |directory generic_data| |default_value_recommended| Default value: ``/var/opt/chef-server/bookshelf/data``.
   * - ``bookshelf['dir']``
     - |directory generic| |default_value_recommended| Default value: ``/var/opt/chef-server/bookshelf``.
   * - ``bookshelf['enable']``
     - |enable service| Default value: ``true``.
   * - ``bookshelf['external_url']``
     - The base URL to which the service will return links to API resources. Use ``:host_header`` to ensure the URL is derived from the host header of the incoming HTTP request. Default value: ``:host_header``.
   * - ``bookshelf['ha']``
     - |use ha| |ha true| Default value: ``false``.
   * - ``bookshelf['listen']``
     - Default value: ``127.0.0.1``.
   * - ``bookshelf['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``/var/log/chef-server/bookshelf``.
   * - ``bookshelf['log_rotation']``
     - |log_rotation| Default value: ``{ 'file_maxbytes' => 104857600, 'num_to_keep' => 10 }``
   * - ``bookshelf['port']``
     - |port service| Default value: ``4321``.
   * - ``bookshelf['secret_access_key']``
     - Default value: ``generated-by-default``.
   * - ``bookshelf['stream_download']``
     - Default value: ``true``.
   * - ``bookshelf['url']``
     - This value will default to the value of the URL for |nginx|, which is built from the configured ``api_fqdn`` and the SSL port for |nginx|.
