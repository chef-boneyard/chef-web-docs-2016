.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

When restoring |chef server|  data, the previously backed-up files will be required, along with the |chef server| running only the |service postgresql| service.
Perform all activities as root unless otherwise directed.

#. Stop all Chef Server services.

    and then restore the previously backed-up files to the following locations using this command to exclude postgres files:

    * /etc/opscode 
    * /var/opt/opscode

    .. code-block:: bash

      tar xvfzp var-opt-opscode-$THEDATE.tar.gz --exclude='var/opt/opscode/drbd/data/postgresql_9.2' -C /

#. Start PostgreSQL service.
#. Restore PostgreSQL DB:

    .. code-block:: bash

      gunzip -c postgresql-dump-$THEDATE.gz | /opt/opscode/embedded/bin/psql -U "opscode-pgsql" -d postgres

    This process has only 2 ERRORs and these can be ignored:

    ERROR: current user cannot be dropped 

    ERROR: role "opscode-pgsql" already exists

#. Start all Chef Server services.
