.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``opscode-authz`` service creates supervisor logs and application logs.

* ``/var/log/opscode/opscode-authz/access.log.DATE``: Access logs for the ``opscode-authz`` service. These logs contain the date and hour they were written. They must be rotated externally.
* ``/var/log/opscode/opscode-authz/perf.log.DATE``: Performance logs for the ``opscode-authz`` service. These logs contain the date and hour they were written. They must be rotated externally.

To follow the logs for this service, enter the following command:

.. code-block:: bash

   $ private-chef-ctl opscode-authz tail
