.. This is an included file that describes a sub-command or argument in Knife.


The ``server delete`` argument is used to delete one or more instances that are running in the |linode| cloud. To find a specific cloud instance, use the ``knife linode server list`` argument. Use the ``knife node delete`` and ``knife client delete`` sub-commands to delete associated node and client objects (if required).

This argument has the following syntax::

   knife linode server delete LINODE_ID

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-A KEY``, ``--linode-api-key KEY``
     - |linode-api-key|

