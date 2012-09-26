.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server delete`` argument is used to delete one or more instances that are running in the |bluebox| cloud. A block represents the on-demand virtual computing resource; a hostname is specific to a block. To find a specific cloud instance, use the ``knife bluebox server list`` argument. Use the ``knife node delete`` and ``knife client delete`` sub-commands to delete associated node and client objects (if required).

This argument has the following syntax::

   knife bluebox server delete BLOCK_HOSTNAME

This argument does not have any options.

For example, to delete an instance at block "12345" with a hostname of "dev", enter:

.. code-block:: bash

   $ knife bluebox server delete block12345-dev.blueboxgrid.com
