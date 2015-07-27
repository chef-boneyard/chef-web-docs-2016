
=====================================================
Release Notes: |chef server_title| 12.2
=====================================================

.. include:: ../../includes_chef/includes_chef_index.rst

What's New
=====================================================
The following items are new for |chef server| 12.2:

* **Configurable Postgresql** Postgresql can be configured for an external database.


Configurable |postgresql|
-----------------------------------------------------


The following diagram shows the various components that are part of a |chef server| deployment and how they relate to one another. |postgresql| is configured independently of the |chef server| (and not as part of the built-in configuration).

.. image:: ../../images/server_components_postgresql.svg

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Component
     - Description
   * - Bookshelf
     - .. include:: ../../includes_chef_server/includes_chef_server_component_bookshelf.rst

       All cookbooks are stored in a dedicated repository.
   * - Manage
     - .. include:: ../../includes_chef_server/includes_chef_server_component_webui.rst
   * - Chef Server
     - .. include:: ../../includes_chef_server/includes_chef_server_component_erchef.rst
   * - Message Queues
     - Messages are sent to the Search Index using the following components:
       
          #. .. include:: ../../includes_chef_server/includes_chef_server_component_rabbitmq.rst
          #. .. include:: ../../includes_chef_server/includes_chef_server_component_expander.rst
          #. .. include:: ../../includes_chef_server/includes_chef_server_component_solr.rst

       All messages are added to a dedicated search index repository.
   * - Nginx
     - .. include:: ../../includes_chef_server/includes_chef_server_component_nginx.rst
   * - PostgreSQL
     - .. include:: ../../includes_chef_server/includes_chef_server_component_postgresql.rst

       This represents the independently configured set of servers that are running |postgresql| and are configured to act as the data store for the |chef server|.

Use the following configuration settings in the |chef server rb| file to configure |postgresql| for use with the |chef server|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``postgresql['external']``
     - Required. This value must be set to ``true`` to run |postgresql| external to the |chef server|. Must be set once only on a new installation of the |chef server| before the first ``chef-server-ctl reconfigure`` command is run. If this is set after a reconfigure or set to ``false``, any reconfigure of the |chef server| will return an error. Default value: ``false``.
   * - ``postgresql['vip']``
     - Required when ``postgresql['external']`` is set to ``true``. |ip_address virtual| The host for this IP address must be online and reachable from the |chef server| via the port specified by ``postgresql['port']``. Default value: ``"external-postgres-host-or-ip"``.
   * - ``postgresql['port']``
     - Optional when ``postgresql['external']`` is set to ``true``. The port used by |postgresql| if that port is **not** 5432. Default value: ``5432``.
   * - ``postgresql['db_superuser']``
     - Required when ``postgresql['external']`` is set to ``true``. The |postgresql| user name. This user must be granted either the ``CREATE ROLE`` and ``CREATE DATABASE`` permissions in |postgresql| or be granted ``SUPERUSER`` permission. This user must also have an entry in the host-based authentication configuration file used by |postgresql| (traditionally named ``pg_hba.conf``). Default value: ``'superuser_userid'``.
   * - ``postgresql['db_superuser_password']``
     - Required when ``postgresql['external']`` is set to ``true``. The password for the user specified by ``postgresql['db_superuser']``. Default value: ``'the password'``.

What's Fixed
=====================================================
For the list of issues that were addressed for this release, please see the changelog on |github|: https://github.com/chef/opscode-omnibus/blob/master/CHANGELOG.md
