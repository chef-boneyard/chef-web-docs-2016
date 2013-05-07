.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|pushy| is a building block for remote execution that uses the same authentication and authorization model as the |chef server|, is integrated with search (and other features), and can scale to the size of any |chef| organization.

|pushy| extends the |api chef server| for job creation and tracking. A simple |ruby| client initiates all connections to the |chef server|, sends and receives heartbeats, and then executes commands as required. 

A |knife| plugin is used to manage |pushy|, start jobs, stop jobs, and view jobs. Use the ``knife node status`` subcommand to identify which nodes |pushy| should interact with, and then use the ``knife job start`` and ``knife job stop`` subcommands to run |pushy|.