.. This is an included file that describes a sub-command or argument in Knife.


The ``flavor list`` argument is used to view a list of flavors that are running on servers that are associated with a |rackspace| account, including the server ID, server name, architecture, RAM, and disk. The results may show flavor that are not currently managed by the Chef Server.

This argument has the following syntax::

   knife rackspace flavor list

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-K API_KEY``, ``--rackspace-api-key API_KEY``
     - |rackspace-api-key|
   * - ``-A USER_NAME``, ``--rackspace-username USER_NAME``
     - |rackspace-username|
   * - ``--rackspace-api-auth-url``
     - |rackspace-api-auth-url|

