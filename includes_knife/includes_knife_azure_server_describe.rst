.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server describe`` argument is used to view a detailed description of one or more roles that exist in a |windows azure| cloud instance. For each specified role name, information such as status, size, hosted service name, deployment name, ports (open, local, public) and IP are displayed.

This argument has the following syntax::

   knife azure server describe [ROLE_NAME...]

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

``-p FILE_NAME``, ``--azure-pem-filename FILE_NAME``
   |azure-pem-filename|

``--print-after``
   |print-after|

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

For example, to view the details for a role named "admin", enter:

.. code-block:: bash

   $ knife azure server describe admin



