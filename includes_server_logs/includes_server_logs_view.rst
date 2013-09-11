.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|chef server oec| has built-in support for easily tailing the logs that are generated. To view all the logs being generated on a |chef server oec| server, enter the following command:

.. code-block:: bash

   $ private-chef-ctl tail

To view logs for a specific service:

.. code-block:: bash

   $ private-chef-ctl tail SERVICENAME

where ``SERVICENAME`` should be replaced with name of the service for which log files will be viewed.

Another way to view log files is to use the system utility tail:

.. code-block:: bash

   $ tail -50f /var/log/opscode/opscode-chef/current



