.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


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

