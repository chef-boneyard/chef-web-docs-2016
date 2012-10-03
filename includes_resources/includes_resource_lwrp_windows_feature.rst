.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |lwrp windows feature| is used to manage server roles, role services, and features:

* A server role is a set of software programs that allows a computer to perform a specific function for multiple users or for other computers within a network. One (or more) role services provide the functionality to the server role. 
* A role service is a software program that provides the functionality of a server role.
* A feature is a software program that supports or augments the functionality of one (or more) server roles.

This lightweight resource allows features to be managed in an unattended, idempotent way. Two providers support using |microsoft dism| and |microsoft servermanagercmd| to manage server roles, role services, and features.
