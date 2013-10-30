.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|pushy| (sometimes referred to as "Pushy") is an add-on to |chef server oec| that allows jobs to be run against nodes independently of a |chef client| run. A job is an action or a command to be executed against a subset of nodes; the nodes against which a job is run are determined by the results of a search query made to the |chef server|. 

|pushy| is an extension of the |api chef server| and uses a |ruby| client to initiate all connections to the |chef server|. Connections use the same authentication and authorization model as any other request made to the |chef server|. A |knife| plugin is used to initiate job creation and job tracking.




