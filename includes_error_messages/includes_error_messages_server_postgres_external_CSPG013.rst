.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


**Reason**

The ``db_superuser`` account has incorrect permissions.

**Possible Causes**

* The ``db_superuser`` account has not been granted ``SUPERUSER`` access
* The ``db_superuser`` account has not been granted ``CREATE DATABASE`` and ``CREATE ROLE`` privileges

  .. code-block:: bash

     ALTER ROLE "$your_db_superuser_name" WITH SUPERUSER

  or:

  .. code-block:: bash

     ALTER ROLE "$your_db_superuser_name"  WITH CREATEDB CREATEROLE
