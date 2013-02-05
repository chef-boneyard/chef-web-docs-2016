.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A typical status line for a running service on a non-high availability private chef server:

.. code-block:: bash

    run: opscode-solr: (pid 1486) 7819s; run: log: (pid 1485) 7819s

* The first segment, run, describes the state the supervisor is attempting to keep the process in. Most commonly, this is either run (when the service should be up and running) or down, meaning the service should be stopped.
* The second segment is the service name itself - in this case, opscode-solr.
* The third segment is the process ID of the running service process (pid 14866), followed by how long the process as been running in seconds (7819s).
* The fourth segment begins after the semicolon - the pattern then repeats for the log process. Note that it is typical that the log process may have a longer run time than the service it is managing: this is a side-effect of the fact that the supervisor does not need to restart the log process to connect supervised processes to the logger.

The status line for the same service, only stopped:

.. code-block:: bash

   down: opscode-solr: 3s, normally up; run: log: (pid 1485) 8526s


The first segment has changed to down, and the third segment is now the time the service has been down, followed by the fact that the service is normally up. This means the supervisor would attempt to start this service on reboot - given no other input, the service would “normally be up”.

