.. This is an included file that describes a sub-command or argument in Knife.


The ``bulk delete`` argument is used to delete cookbook files that match a pattern defined by a regular expression. The regular expression must be within quotes and not be surrounded by forward slashes (/). 

This argument has the following syntax::

   knife cookbook bulk delete REGEX (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-p``, ``--purge``
     - |purge cookbook|

For example:

.. code-block:: bash

   $ knife cookbook bulk delete "^[0-9]{3}$" -p
