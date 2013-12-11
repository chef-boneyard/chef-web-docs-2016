.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following general settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``api_fqdn``
     - The |fqdn| for the |chef server|. This setting is not in the |enterprise rb| by default. When added, its value should be equal to the |fqdn| for the service URI used by the |chef server|. Then configure the same value for the ``bookshelf['vip']`` setting prior to installing |chef server oec|. For example: ``api_fqdn "chef.example.com"``.
   * - ``api_version``
     - Default value: ``11.0.2``.
   * - ``bootstrap``
     - Default value: ``true``.
   * - ``database_type``
     - The type of database we are using. Only ``postgresql`` is fully supported - while ``mysql`` can be used with |chef server oec|, it requires the end user to install and configure both the server itself and the |mysql| client libraries. Default value: ``postgresql``.
   * - ``flavor``
     - Default value: ``osc``.
   * - ``notification_email``
     - Default value: ``info@example.com``.
