.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

For communication between |push jobs| and the |chef server|, ensure that TCP protocol ports 10000-10003 are open. This allows the |push jobs| clients to communicate with the |push jobs| server. In a configuration with both front and back ends, these ports only need to be open on the back end servers. The |push jobs| server waits for connections from the |push jobs| client (and never makes a connection to a |push jobs| client).
