.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


When backing up |chef server oec| data, be sure that the system is shut down (or otherwise quiet) at the time of the backup. As the ``opscode-pgsql`` user, run the following command:

.. code-block:: bash

   $ /opt/opscode/embedded/bin/pg_dumpall | gzip --fast > postgresql-dump.gz

and then synchronize to make sure that all of the data is present on-disk:

.. code-block:: bash

   $ sync

