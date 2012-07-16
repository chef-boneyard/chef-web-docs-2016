.. This is an included file that describes a sub-command or argument in Knife.


The ``server list`` argument is used to find instances that are associated with a |eucalyptus| account. The results may show instances that are not currently managed by the |chef server|.

This argument has the following syntax::

   knife eucalyptus server list

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-A ID``, ``--euca-access-key-id ID``
     - |euca-access-key-id|
   * - ``-K SECRET``, ``--euca-secret-access-key SECRET``
     - |euca-secret-access-key|
   * - ``--euca-api-endpoint ENDPOINT``
     - |euca-api-endpoint|
   * - ``--region REGION``
     - |region eucalyptus|

