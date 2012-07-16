.. This is an included file that describes a sub-command or argument in Knife.


The ``server delete`` argument is used to delete one or more instances that are running in the |terremark| cloud. To find a specific cloud instance, use the ``knife terremark server list`` argument. Use the ``knife node delete`` and ``knife client delete`` sub-commands to delete associated node and client objects (if required).

This argument has the following syntax::

   knife terremark server delete SERVER_ID

This argument does not have any options.

For example, to delete an instance with an identifier of "abcdefg", enter:

.. code-block:: bash

   $ knife terremark server delete abcdefg

