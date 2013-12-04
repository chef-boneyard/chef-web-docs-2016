.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A client is any agent that uses the |api chef server| to interact with the |chef server|. This is almost always (and often only) the |chef client|, which is an agent that runs locally on every node that is registered with the |chef server|. Every node on which a |chef client| is configured is automatically added to the |webui group clients| group.