.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|pushy| has three main components: a server, a client that is installed on every node in the |chef| organization, and one (or more) workstations from which job messages are initiated. 

All communication between these components is done with the following:

* A heartbeat message between the |pushy| server and each managed node
* A job message sent from a workstation
* The |api chef server| and the |api pushy| 
* A |knife| plugin named ``knife-pushy``
* |chef server| authentication and authorization