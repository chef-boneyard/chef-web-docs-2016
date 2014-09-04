.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

When restoring |chef server oec|  data, the previously backed-up files will be required, along with the |chef server oec| running only the |service postgresql| service. To restore the database, as the ``opscode-pgsql`` user, run the following command:

.. code-block:: bash

   $ gunzip -c postgresql-dump.gz | /opt/opscode/embedded/bin/psql -U "opscode-pgsql" -d postgres

and then restore the previously backed-up files to the following locations:

* /etc/opscode 
* /var/opt/opscode

