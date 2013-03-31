.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``flavor list`` argument is used to view a list of flavors that are running on servers that are associated with a |rackspace| account, including the server ID, server name, architecture, RAM, and disk. The results may show flavor that are not currently managed by the Chef Server.

This argument has the following syntax::

   knife rackspace flavor list

This argument has the following options:

``-A USER_NAME``, ``--rackspace-username USER_NAME``
   |rackspace-username|

``-K API_KEY``, ``--rackspace-api-key API_KEY``
   |rackspace-api-key|

``--rackspace-api-auth-url``
   |rackspace-api-auth-url|

