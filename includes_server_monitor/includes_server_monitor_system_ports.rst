.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


All services must be listening on the appropriate ports. Most monitoring systems provide a means of testing whether a given port is accepting connections and service-specific tools may also be available. In addition, the generic system tool |telnet| can also be used to initiate a |tcpip| connection:

.. code-block:: bash

   $ telnet HOST_NAME PORT


