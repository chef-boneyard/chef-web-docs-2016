.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings from previous versions of the |chef server| that are used to support the upgrade process to |chef server| 12:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``couchdb['data_dir']``
     - Default value: ``'/var/opt/opscode/couchdb/db'``.
   * - ``couchdb['port']``
     - Default value: ``5984``.
   * - ``couchdb['vip']``
     - Default value: ``'127.0.0.1'``.
   * - ``opscode_solr['data_dir']``
     - Default value: ``'/var/opt/opscode/opscode-solr/data'``.
   * - ``opscode_webui['enable']``
     - Default value: ``false``.
