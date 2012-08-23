.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server list`` argument is used to find instances that are associated with a |amazon ec2| account. The results may show instances that are not currently managed by the |chef server|.

This argument has the following syntax::

   knife ec2 server list

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-A KEY``, ``--aws-access-key-id KEY``
     - |aws-access-key-id|
   * - ``--K SECRET``, ``--aws-secret-access-key SECRET``
     - |aws-secret-access-key|
   * - ``--region REGION``
     - |region amazon|

