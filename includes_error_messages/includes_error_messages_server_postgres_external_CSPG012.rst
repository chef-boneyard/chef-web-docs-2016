.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


**Reason**

Cannot connect to |postgresql| on the remote server because rules in ``pg_hba`` are incorrect.

**Possible Causes**

* There is no ``pg_hba.conf`` rule for the ``db_superuser`` in |postgresql|
* A rule exists for the ``db_superuser`` in ``pg_hba.conf``, but it does not specify ``md5`` access
* A rule in ``pg_hba.conf`` specifies an incorrect originating address

**Resolution**

* Entries in the ``pg_hba.conf`` file should allow all user names that originate from any |chef server| instance using ``md5`` authentication. For example, a ``pg_hba.conf`` entry for a valid username and password from the 192.168.18.0 subnet:

  .. code-block:: bash

	 host     postgres     all     192.168.18.0/24     md5

  or, specific named users with a valid password originating from the 192.168.18.0 subnet. A file named ``$PGDATA/chef_users`` with the following content must be created:

  .. code-block:: bash

	 opscode_chef
	 opscode_chef_ro
	 bifrost
	 bifrost_ro
	 oc_id
	 oc_id_ro

  where ``CHEF-SUPERUSER-NAME`` is replaced with the same user name specified by ``postgresql['db_superuser']``. The corresponding ``pg_hba.conf`` entry is similar to:

  .. code-block:: bash

     host     postgres     @chef_users     192.168.93.0/24     md5

* Rules in the ``pg_hba.conf`` file should allow only specific application names: ``$db_superuser`` (the configured superuser name in the |chef server rb| file), ``oc_id``, ``oc_id_ro``, ``opscode_chef``, ``opscode_chef_ro``, ``bifrost``, and ``bifrost_ro``
