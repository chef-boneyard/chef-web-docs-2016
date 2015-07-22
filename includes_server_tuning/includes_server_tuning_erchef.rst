.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following settings are often modified from the default as part of the tuning effort for the |service erchef| service:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_erchef['db_pool_size']``
     - |db_pool_size| If failures indicate that the |service erchef| service ran out of connections, try increasing the ``postgresql['max_connections']`` setting. If failures persist, then increase this value and also increase the value for ``postgresql['max_connections']``. Default value: ``20``.
   * - ``opscode_erchef['s3_url_ttl']``
     - |s3_url_ttl| If |chef client| runs are timing out, increase this setting to ``3600``, and then adjust again if necessary. Default value: ``900``.
   * - ``opscode_erchef['strict_search_result_acls']``
     - Use to specify that search results are returned only when a user has read access to the search result, as determined by ACL settings. When true, the |chef manage| user interface will perform faster because redundant ACL checks are skipped. Run ``chef-manage-ctl reconfigure`` in addition to ``chef-server-ctl reconfigure`` to ensure a change to this setting is applied to the |chef manage|. Default value: ``false``.

       .. warning:: When ``true``, ``opscode_erchef['strict_search_result_acls']`` affects all search results and any user that does not have read access to the search result will not be able to view it.
