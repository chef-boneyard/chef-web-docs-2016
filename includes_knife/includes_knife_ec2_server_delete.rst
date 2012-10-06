.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server delete`` argument is used to delete one or more nodes that are running in the |amazon ec2| cloud. To find a specific cloud instance, use the ``knife ec2 server list`` argument. Use the ``--purge`` option to delete all associated node and client objects from the |chef server| or use the ``knife node delete`` and ``knife client delete`` sub-commands to delete specific node and client objects.

This argument has the following syntax::

   knife ec2 server delete SERVER [NODE_NAME...] (options)

This argument has the following options:

``-A KEY``, ``--aws-access-key-id KEY``
   |aws-access-key-id|

``-c CONFIG``, ``--config CONFIG``
   |config|

``--color``
   |color|

``--defaults``
   |defaults|

``-e EDITOR``, ``--editor EDITOR``
   |editor|

``-E ENVIRONMENT``, ``--environment ENVIRONMENT``
   |environment|

``-F FORMAT``, ``--format FORMAT``
   |format|

``-h``, ``--help``
   |help|

``-k KEY``, ``--key KEY``
   |key|

``-K SECRET``, ``--aws-secret-access-key SECRET``
   |aws-secret-access-key|

``-N NODE_NAME``, ``--node-name NODE_NAME``
   |node-name purge|

``--no-color``
   |no-color|

``-n``, ``--disable-editing``
   |no-editor|

``-p``, ``--purge``
   |purge amazon ec2|

``--print-after``
   |print-after|

``--region REGION``
   |region amazon|

``-s URL``, ``--server-url URL``
   |server-url|

``-u USER``, ``--user USER``
   |user|

``-v``, ``--version``
   |version chef|

``-V``, ``--verbose``
   |verbose|

``-y``, ``--yes``
   |yes|

For example, to delete a node called "preprod" in an instance named "operations", enter:

.. code-block:: bash

   $ knife ec2 server delete operations preprod
