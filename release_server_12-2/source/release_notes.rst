
=====================================================
Release Notes: |chef server_title| 12.2
=====================================================

.. include:: ../../includes_chef/includes_chef_index.rst

What's New
=====================================================
The following items are new for |chef server| 12.2:

* **Solr to Solr4 settings** Built-in transition for |apache solr| memory and |jvm| settings from |chef server oec| to |chef server| version 12.
* **Configurable Postgresql** Postgresql can be configured for an external database.

.. 
.. when Chef server 12.2 is released, uncomment the "Solr => Solr 4 Changes" section in chef_master/upgrade_server_notes.rst
.. 

Solr => Solr 4 Changes
=====================================================
.. include:: ../../includes_upgrade/includes_upgrade_12-2_solr_to_solr4.rst

External |postgresql|
=====================================================
.. include:: ../../includes_server_ha/includes_server_ha_external_postgresql.rst

Settings
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_server_ha/includes_server_ha_external_postgresql_settings.rst


What's Fixed
=====================================================
For the list of issues that were addressed for this release, please see the changelog on |github|: https://github.com/chef/opscode-omnibus/blob/master/CHANGELOG.md
