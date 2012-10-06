.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server delete`` argument is used to delete one or more instances that are running in the |windows azure| cloud. To find a specific cloud instance, use ``knife azure server list``. Use the ``--purge`` option to delete all associated node and client objects from the |chef server| or use the ``knife node delete`` and ``knife client delete`` sub-commands to delete specific node and client objects.

This argument has the following syntax::

   knife azure server delete [SERVER...] (options)

This argument has the following options:

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

``-H HOST_NAME``, ``--azure_host_name HOST_NAME``
   |azure host name|

``-k KEY``, ``--key KEY``
   |key|

``-n``, ``--disable-editing``
   |no-editor|

``--no-color``
   |no-color|

``-N NODE_NAME``, ``--node-name NODE_NAME``
   |node-name purge| This must be used with the ``-p`` (purge) option.

``-p FILE_NAME``, ``--azure-pem-filename FILE_NAME``
   |azure-pem-filename|

``-P``, ``--purge``
   |purge windows azure|

``--print-after``
   |print-after|

``--purge-os-disk``
   |purge os disk windows azure|

``-s URL``, ``--server-url URL``
   |server-url|

``-S ID``, ``--azure-subscription-id ID``
   |azure-subscription-id|

``-u USER``, ``--user USER``
   |user|

``-v``, ``--version``
   |version chef|

``-V``, ``--verbose``
   |verbose|

``--verify-ssl-cert``
   |azure verify ssl certificate|

``-y``, ``--yes``
   |yes|

For example, to delete an instance named "devops12", enter:

.. code-block:: bash

   $ knife azure server delete devops12
