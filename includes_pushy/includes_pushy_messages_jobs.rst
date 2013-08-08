.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


All job messaging is done using |zeromq| and all messages between components are formatted as |json|. |zeromq| (and its DEALER / ROUTER pattern) is used to send job-related messages between a managed node and the |pushy| server. A job message can be queried and reused.

* A job message involves either job creation or job tracking
* A job message may be sent to one (or more) nodes in an organization and contains a command message that is executed on each node that receives the job message
* A job message is sent to a node from the |chef server| as a request, using the |api chef server| and |api pushy|
* A job message is a command; the ``knife-pushy`` subcommand defines the arguments available for job messaging
* Only a single job message may be issued to a node at a time; each job message must be completed before another job message may be sent
* The search functionality in |chef server| is used to determine which nodes in the organization will receive a job message
* Each node returns acknowledgements, updates, and results to the |pushy| server