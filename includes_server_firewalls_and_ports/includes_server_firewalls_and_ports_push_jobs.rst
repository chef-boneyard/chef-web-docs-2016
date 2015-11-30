.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

TCP protocol ports 10000 and 10003 are the default heartbeat and command ports, respectively. They can be configured in the |push jobs| :doc:`configuration file </config_rb_push_jobs_server>`. These ports allow the |push jobs| clients to communicate with the |push jobs| server. In a configuration with both front and back ends, these ports only need to be open on the back end servers. The |push jobs| server waits for connections from the |push jobs| client, and never initiates a connection to a |push jobs| client.

Port 10002 is the default web port and can not be changed as it is internal. 
