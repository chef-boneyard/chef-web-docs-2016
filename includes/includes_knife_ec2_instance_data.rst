.. This is an included file that describes a sub-command or argument in Knife.


The ``instance data`` argument is used to generate instance metadata used with custom |opscode| |amazon ami|. This process will read the validation certificate and |chef server| URL from the |knife| configuration file (|path chef knife rb|) and will output the data in JSON format.

.. note:: Using this sub-command is an older way of launching |amazon ec2| instances for |chef| and should be considered deprecated. Using the ``server create`` sub-command is preferred (and more flexible). Although this sub-command will remain, the |opscode| custom |amazon ami| are out of date.

This argument has the following syntax::

   knife ec2 instance data (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-A KEY``, ``--aws-access-key-id KEY``
     - |aws-access-key-id|
   * - ``-e``, ``--edit``
     - |edit|
   * - ``--K SECRET``, ``--aws-secret-access-key SECRET``
     - |aws-secret-access-key|
   * - ``-r RUN_LIST``, ``--run-list RUN_LIST``
     - |run-list|
   * - ``--region REGION``
     - |region amazon|

