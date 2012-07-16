.. This is an included file that describes a sub-command or argument in Knife.


The ``image list`` argument is used to view a list of images that are running on servers that are hosted at a |rackspace| cloud services, including returning a list of each server (and server ID).

This argument has the following syntax::

   knife rackspace image list

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

