.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |pushy| server is used to send job messages to one (or more) managed nodes.

* A heartbeat message is used to let all of the nodes in a |chef| organization that the |pushy| server is available
* A heartbeat message is one-way and does not require acknowledgements from a |pushy| client
* The frequency of the heartbeat message is configurable

The |pushy| server listens for heartbeat messages from each |pushy| client. If there is no heartbeat from a |pushy| client, the |pushy| server will mark that node as unavailable for job messages until the heartbeat resumes.





