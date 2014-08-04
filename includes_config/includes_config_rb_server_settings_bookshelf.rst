.. The contents of this file are included in multiple topics.
.. THIS FILE SHOULD NOT BE MODIFIED VIA A PULL REQUEST.

This configuration file has the following settings for ``bookshelf``:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``bookshelf['access_key_id']``
     - The access key identifier used with the Bookshelf service. (This is configurable and may be pointed at external storage locations, such as |amazon ec2|. Four settings require configuration when pointing at an external cookbook storage location: ``bookshelf['vip']``, for the endpoint; ``bookshelf['access_key_id']``, for user access key; ``bookshelf['secret_access_key']``, for secret key; and ``opscode_erchef['s3_bucket']``, for the bucket name. Run the |chef server| ``reconfigure`` command after changing these settings.) Default value: ``generated-by-default``.
   * - ``bookshelf['data_dir']``
     - |directory generic_data| |default_value_recommended| Default value: ``/var/opt/chef-server/bookshelf/data``.
   * - ``bookshelf['dir']``
     - |directory generic| |default_value_recommended| Default value: ``/var/opt/chef-server/bookshelf``.
   * - ``bookshelf['enable']``
     - |enable service| Default value: ``true``.
   * - ``bookshelf['external_url']``
     - The base URL to which the service will return links to API resources. Use ``:host_header`` to ensure the URL is derived from the host header of the incoming HTTP request. Default value: ``:host_header``.
   * - ``bookshelf['ha']``
     - |use ha| Default value: ``false``.
   * - ``bookshelf['listen']``
     - The IP address on which the service will listen. Default value: ``127.0.0.1``.
   * - ``bookshelf['log_directory']``
     - |directory logs| |default_value_recommended| Default value: ``/var/log/chef-server/bookshelf``.
   * - ``bookshelf['log_rotation']``
     - |log_rotation| Default value: ``{ 'file_maxbytes' => 104857600, 'num_to_keep' => 10 }``
   * - ``bookshelf['port']``
     - |port service| Default value: ``4321``.
   * - ``bookshelf['secret_access_key']``
     - The secret access key for the API endpoint used with the Bookshelf service. (This is configurable and may be pointed at external storage locations, such as |amazon ec2|. Four settings require configuration when pointing at an external cookbook storage location: ``bookshelf['vip']``, for the endpoint; ``bookshelf['access_key_id']``, for user access key; ``bookshelf['secret_access_key']``, for secret key; and ``opscode_erchef['s3_bucket']``, for the bucket name. Run the |chef server| ``reconfigure`` command after changing these settings.) Default value: ``generated-by-default``.
   * - ``bookshelf['stream_download']``
     - Default value: ``true``.
   * - ``bookshelf['vip']``
     - |ip_address virtual| (This is configurable and may be pointed at external storage locations, such as |amazon ec2|. Four settings require configuration when pointing at an external cookbook storage location: ``bookshelf['vip']``, for the endpoint; ``bookshelf['access_key_id']``, for user access key; ``bookshelf['secret_access_key']``, for secret key; and ``opscode_erchef['s3_bucket']``, for the bucket name. Run the |chef server| ``reconfigure`` command after changing these settings.) Default value: ``node['fqdn']``.
