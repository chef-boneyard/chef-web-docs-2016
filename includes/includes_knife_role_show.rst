.. This is an included file that describes a sub-command or argument in Knife.


The ``show`` argument is used to view the details of a role. 

This argument has the following syntax::

   knife role show ROLE_NAME

This sub-command has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-a ATTR``, ``--attribute ATTR``
     - |attribute|

For example:

.. code-block:: bash

   $ knife role show devops

