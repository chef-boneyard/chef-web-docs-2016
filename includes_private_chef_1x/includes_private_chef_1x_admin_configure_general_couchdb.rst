.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for |couch db|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``couchdb['batch_save_interval']``
     - The time in milliseconds within which we will save documents to disk, regardless of how many have been written. Default value: ``1000``. For example:
       ::

          couchdb['batch_save_interval'] = 1000

   * - ``couchdb['batch_save_size']``
     - The number of documents that will trigger a batch save. Default value: ``1000``. For example:
       ::

          couchdb['batch_save_size'] = 1000

   * - ``couchdb['bind_address']``
     - The address that CouchDB will bind to. Default value: ``"127.0.0.1"``. For example:
       ::

          couchdb['bind_address'] = "127.0.0.1"

   * - ``couchdb['data_dir']``
     - Where CouchDB will store its on-disk data. While this attribute can be changed, we recommend you do not deviate from our typical, supported layout. Default value: ``"/var/opt/opscode/couchdb/db"``. For example:
       ::

          couchdb['data_dir'] = "/var/opt/opscode/couchdb/db"

   * - ``couchdb['delayed_commits']``
     - Whether commits are delayed. For performance, we tune CouchDB to batch commits according to the ``batch_save_interval`` and ``batch_save_size`` options above. Default value: ``"true"``. For example:
       ::

          couchdb['delayed_commits'] = "true"

   * - ``couchdb['dir']``
     - The base directory for CouchDB data. While this attribute can be changed, we recommend you do not deviate from our typical, supported layout. Default value: ``"/var/opt/opscode/couchdb"``. For example:
       ::

          couchdb['dir'] = "/var/opt/opscode/couchdb"

   * - ``couchdb['enable']``
     - |enable service| Default value: ``true``. For example:
       ::

          couchdb['enable'] = true

   * - ``couchdb['ha']``
     - |use ha| This is typically managed by the topology of the cluster and the role this server plays in that topology. This setting (when ``true``) will set the |couch db| service to be down. Default value: ``false``. For example:
       ::

          couchdb['ha'] = false

   * - ``couchdb['log_directory']``
     - |directory logs| The default value is the recommended value. Default value: ``"/var/log/opscode/couchdb"``. For example:
       ::

          couchdb['log_directory'] = "/var/log/opscode/couchdb"

   * - ``couchdb['svlogd_size']``
     - |svlogd_size| Default value: ``1000000``. For example:
       ::

          couchdb['svlogd_size'] = 1000000

   * - ``couchdb['svlogd_num']``
     - |svlogd_num| Default value: ``10``. For example:
       ::

          couchdb['svlogd_num'] = 10

   * - ``couchdb['log_level']``
     - |log_level| Default value: ``"error"``. For example:
       ::

          couchdb['log_level'] = "error"

   * - ``couchdb['max_attachment_chunk_size']``
     - The maximum attachment size. Default value: ``"4294967296"``. For example:
       ::

          couchdb['max_attachment_chunk_size'] = "4294967296"

   * - ``couchdb['max_dbs_open']``
     - The maximum number of open databases. Default value: ``10000``. For example:
       ::

          couchdb['max_dbs_open'] = 10000

   * - ``couchdb['max_document_size']``
     - The maximum size of a document. Default value: ``"4294967296"``. For example:
       ::

          couchdb['max_document_size'] = "4294967296"

   * - ``couchdb['os_process_timeout']``
     - How long before timing out external processes, in milliseconds. Default value: ``"300000"``. For example:
       ::

          couchdb['os_process_timeout'] = "300000"

   * - ``couchdb['port']``
     - The port CouchDB will listen on. Default value: ``5984``. For example:
       ::

          couchdb['port'] = 5984

   * - ``couchdb['reduce_limit']``
     - Disable limiting the number of reduces. Default value: ``"false"``. For example:
       ::

          couchdb['reduce_limit'] = "false"

   * - ``couchdb['vip']``
     - The IP address that other services needing access to CouchDB should use. This option is typically set by the ``topology`` and ``role`` a server plays. Default value: ``"127.0.0.1"``. For example:
       ::

          couchdb['vip'] = "127.0.0.1"

