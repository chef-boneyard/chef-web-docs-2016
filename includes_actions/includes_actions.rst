.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef actions| is an add-on for |chef server oec| that provides visibility into what is happening on the server. The |chef server oec| server gathers a lot of data---each node objects, the node run history for all nodes, the history of every cookbook and cookbook version, how policy settings---such as roles, environments, and data bags---are applied and to what they are applied, individual user data, and so on. 

|chef actions| tracks all of this data in real-time, which then helps you answer the following types of questions:

* Which object changed?
* What type of change was made?
* When was this change made?
* Who changed it?

For example, |chef actions| can tell you things like:

* The date and time on which a specific user uploaded a cookbook from their local workstation to the |chef server|
* The date and time at which a cookbook stopped working
* The changes that were made to the system immediately before that cookbook stopped working

This type of information can be used to quickly identify where in the overall system something changed, which in turn helps identify what went wrong, and then helps show your organization what the resolution should be.

|chef actions| can also tell you things like:

* What happened just before one (or more) |chef client| runs started failing?
* Which versions of |ssh| are on which machines?
* Is each system updated for the latest patch?
* When did the depsolver break? Which changes happened immediately prior?

Because |chef actions| tracks all of this in real-time, your organization will be able to use |chef actions| to react to events as they happen and to more quickly resolve issues that may arise.