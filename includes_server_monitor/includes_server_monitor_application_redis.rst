.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|redis cli| is the management tool for |redis|. It can be used to obtain information about keys that are being used with |chef server oec|. For more information about |redis cli|, see http://redis.io/commands.

To verify that the connection to |redis| is alive, run the following command:

.. code-block:: bash

   $ cd /opt/opscode/embedded/service/redis/
     export PATH=$PATH:/opt/opscode/bin:/opt/opscode/embedded/bin
     bin/redis-cli PING

to return:

.. code-block:: bash

   PONG




