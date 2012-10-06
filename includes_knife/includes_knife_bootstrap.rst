.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|knife bootstrap|

This sub-command has the following syntax::

   knife bootstrap FQDN_or_IP_ADDRESS (options)

This sub-command has the following options:

``--bootstrap-proxy PROXY_URL``
   |bootstrap-proxy|

``--bootstrap-version VERSION``
   |bootstrap-version|

``-c CONFIG``, ``--config CONFIG``
     - |config|

``--color``
     - |color|

``-d DISTRO``, ``--distro DISTRO``
   |distro|

``--defaults``
   |defaults|

``-e EDITOR``, ``--editor EDITOR``
   |editor|

``-E ENVIRONMENT``, ``--environment ENVIRONMENT``
   |environment|

``-F FORMAT``, ``--format FORMAT``
   |format|

``-G GATEWAY``, ``--ssh-gateway GATEWAY``
   |ssh-gateway|

``-h``, ``--help``
   |help|

``--hint HINT_NAME[=HINT_FILE]``
   |hint|

``-i IDENTITY_FILE``, ``--identity-file IDENTITY_FILE``
   |identity-file|

``-j JSON_ATTRIBS``, ``--json-attributes JSON_ATTRIBS``
   |json-attributes|

``-k KEY``, ``--key KEY``
   |key|

``-n``, ``--disable-editing``
   |no-editor|

``-N NAME``, ``--node-name NAME``
   |node-name|

``--[no-]host-key-verify``
   |[no-]host-key-verify|

``--no-color``
   |no-color|

``-p PORT``, ``--ssh-port PORT``
   |ssh-port|

``-P PASSWORD``, ``--ssh-password PASSWORD``
   |ssh-password|

``--prerelease``
   |prerelease|

``--print-after``
   |print-after|

``-r RUN_LIST``, ``--run-list RUN_LIST``
   |run-list|

``--sudo``
   |sudo|

``-s URL``, ``--server-url URL``
   |server-url|

``--template-file TEMPLATE``
   |template-file|

``-u USER``, ``--user USER``
   |user|

``-v``, ``--version``
   |version chef|

``-V``, ``--verbose``
   |verbose|

``-x USERNAME``, ``--ssh-user USERNAME``
   |ssh-user|

``-y``, ``--yes``
    |yes|

For example, to pass an SSH password as part of the command:

.. code-block:: bash

   $ knife bootstrap 192.168.1.1 -x username -P PASSWORD --sudo

To use a file that contains a private key:

.. code-block:: bash

   $ knife bootstrap 192.168.1.1 -x username -i ~/.ssh/id_rsa --sudo



