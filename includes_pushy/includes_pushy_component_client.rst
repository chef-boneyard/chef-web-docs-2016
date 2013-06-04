.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |pushy| client is used to receive job messages from the |pushy| server and to verify the heartbeat status of the |pushy| environment.

* A heartbeat message is sent to the |pushy| server to let it know the node is available
* A heartbeat message is one-way and does not require acknowledgements from the |pushy| server
* The frequency of the heartbeat message is configurable
* The same authorization / authentication model used when a |chef client| communicates with the |chef server| is used when the |pushy| client communicates with the |pushy| server

The |pushy| client listens for heartbeat messages from the |pushy| server. If there is no heartbeat from the |pushy| server, the |pushy| client will finish its current job, but then stop accepting any new jobs until the heartbeat from the |pushy| server resumes.






