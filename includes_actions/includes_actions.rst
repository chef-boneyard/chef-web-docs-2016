.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Actions are policy and administrative changes made to the |chef server|. The |chef server| gathers a lot of data—--each node object, the node run history for all nodes, the history of every cookbook and cookbook version, how policy settings, such as roles, environments, and data bags, are applied and to what they are applied, individual user data, and so on. Actions are changes to any of these objects. Actions can occur as the result of user interaction in the management console, as the result of knife commands, or by running the |chef client|. No matter what the source, all actions are tracked by the analytics platform and recorded. The result is real-time tracking with an intuitive display.

|chef actions| help you to answer the following questions:

* Which object changed?
* What type of change was made?
* When was this change made?
* Who changed it?

Examples are:

* The date and time on which a specific user uploaded a cookbook from their local workstation to the |chef server|
* The changes that were made to the system immediately before that cookbook stopped working.
* When a node was created for the first time, or when it was decommissioned and deleted from the |chef server|

This information can be used to quickly identify where in the overall system something changed, which in turn helps identify what went wrong, and then helps show your organization what the resolution should be.

When errors occur, you’ll also be able to see what happened just before one (or more) |chef client| runs started failing. Because |chef| tracks all of this in real-time, your organization will now be able to react to events as they happen, and to more quickly resolve issues that arise.
