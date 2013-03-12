.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


xxxxx



Overview
Chef-client and knife both communicate with the Chef Server using a REST API.
Chef-clients make API requests to retrieve their run list, download their cookbooks, and save their state after a successful run.
When developing cookbooks and managing your infrastructure, you will regularly use Knife commands which make API request to the Chef Server.



Before being processed by the server, each request goes through two processes
Authentication: Verifies the identity of the API client communicating with the Chef Server.
	
Authorization: Verifies that the identified client has the permission to perform the requested actions.


After your initial configuration of nodes and your workstations, these processes are largely transparent. However, understanding both of these processes is often important when debugging potential problems.

Since Chef-Solo does not communicate with a Chef Server, authentication and authorization do not play a role in the normal use of chef-solo. This article covers how a given API client's requests are authenticated and authorized. For information about specific errors see Common Errors.


DIAGRAM