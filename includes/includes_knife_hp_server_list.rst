.. This is an included file that describes a sub-command or argument in Knife.


The ``server list`` argument is used to find instances that are associated with an |hp cloud| account. The results may show instances that are not currently managed by the |chef server|.

This argument has the following syntax::

   knife hp server list

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-A ID``, ``--hp-account ID``
     - |hp-account|
   * - ``--hp-auth URI``
     - |hp-auth|
   * - ``-K SECRET``, ``--hp-secret SECRET``
     - |hp-secret|
   * - ``-T ID``, ``--hp-tenant ID``
     - |hp-tenant|
   * - ``-Z ZONE``, ``--hp-zone ZONE``
     - |hp-zone|


