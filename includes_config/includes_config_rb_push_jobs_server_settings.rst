.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings:

``command_port``
   The port on which a |push jobs| server listens for requests that are to be executed on managed nodes. Default value: ``10003``.

``heartbeat_interval``
   The frequency of the |push jobs| server heartbeat message. Default value: ``1000`` (milliseconds).

``server_heartbeat_port``
   The port on which the |push jobs| server receives heartbeat messages from each |push jobs| client. (This port is the ``ROUTER`` half of the |zeromq| DEALER / ROUTER pattern.) Default value: ``10000``.

``server_name``
   The name of the |push jobs| server.

``zeromq_listen_address``
   The IP address used by |zeromq|. Default value: ``tcp://*``.
