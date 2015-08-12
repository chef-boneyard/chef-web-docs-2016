.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


**Reason**

Cannot connect to |postgresql| on the remote server because rules in ``pg_hba`` are incorrect.

**Possible Causes**

* There is no ``pg_hba.conf`` rule for the ``db_superuser`` in |postgresql|
* A rule exists for the ``db_superuser`` in ``pg_hba.conf``, but it does not specify ``md5`` access
* A rule in ``pg_hba.conf`` specifies an incorrect originating address

**Resolution**

* Entries in the ``pg_hba.conf`` file should allow all user names that originate from any |chef server| instance using ``md5`` authentication
* Rules in the ``pg_hba.conf`` file should allow only specific application names: ``$db_superuser`` (the configured superuser name in the |chef server rb| file), ``oc_id``, ``oc_id_ro``, ``opscode_chef``, ``opscode_chef_ro``, ``bifrost``, and ``bifrost_ro``
