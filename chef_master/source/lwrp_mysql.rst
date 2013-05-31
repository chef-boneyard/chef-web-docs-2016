=====================================================
mysql_database Lightweight Resource
=====================================================

|cookbook name mysql|

The ``database`` cookbook contains the following lightweight resource: ``mysql_database``.

mysql_database
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_mysql_database.rst

.. note:: This lightweight resource is part of the ``database`` cookbook (http://community.opscode.com/cookbooks/database).

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_mysql_database_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_mysql_database_attributes.rst

Examples
-----------------------------------------------------
.. include:: ../../step_lwrp/step_lwrp_mysql_database_create_database.rst

.. include:: ../../step_lwrp/step_lwrp_mysql_database_flush_tables.rst

.. include:: ../../step_lwrp/step_lwrp_mysql_database_query_database.rst

.. include:: ../../step_lwrp/step_lwrp_mysql_database_unlock_tables.rst
