.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following files are necessary to backup and restore a |chef server oec| installation.
Be sure the system is shutdown or quiet at the time of the backup.

* As the opscode-pgsql user, do 

   .. code-block:: bash

      /opt/opscode/embedded/bin/pg_dumpall | gzip --fast > postgresql-dump.tgz

* Run a sync to make sure things are on disk

   .. code-block:: bash

      sync

* /etc/opscode 
* /var/opt/opscode
* /var/log/opscode


In order to restore, you will need the above files and a Chef server with only a running postgres service.

To restore the database, use the following.

* As the opscode-pgsql user, do 

   .. code-block:: bash
     
      gunzip -c postgresql-dump.tgz | tar -xf
      /opt/opscode/embedded/bin/psql -U "opscode-pgsql" -d postgres -f postgresql-dump

Replace the following locations on the filesystem using the backup made previously.

* /etc/opscode
* /var/opt/opscode
* /var/log/opscode

