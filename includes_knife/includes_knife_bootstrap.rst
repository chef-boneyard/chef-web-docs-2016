.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|knife bootstrap|

This subcommand has the following syntax::

   knife bootstrap FQDN_or_IP_ADDRESS (options)

This subcommand has the following options:

``--bootstrap-proxy PROXY_URL``
   |bootstrap-proxy|

``--bootstrap-version VERSION``
   |bootstrap-version|

``-d DISTRO``, ``--distro DISTRO``
   |distro|

``-G GATEWAY``, ``--ssh-gateway GATEWAY``
   |ssh-gateway|

``--hint HINT_NAME[=HINT_FILE]``
   |hint|

``-i IDENTITY_FILE``, ``--identity-file IDENTITY_FILE``
   |identity-file|

``-j JSON_ATTRIBS``, ``--json-attributes JSON_ATTRIBS``
   |json-attributes|

``-N NAME``, ``--node-name NAME``
   |node-name cloud|

``--[no-]host-key-verify``
   |[no-]host-key-verify|

``-p PORT``, ``--ssh-port PORT``
   |ssh-port|

``-P PASSWORD``, ``--ssh-password PASSWORD``
   |ssh-password|

``--prerelease``
   |prerelease|

``-r RUN_LIST``, ``--run-list RUN_LIST``
   |run-list|

``--sudo``
   |sudo|

``--template-file TEMPLATE``
   |template-file|

``-x USERNAME``, ``--ssh-user USERNAME``
   |ssh-user|

For example, to pass an SSH password as part of the command:

.. code-block:: bash

   $ knife bootstrap 192.168.1.1 -x username -P PASSWORD --sudo

To use a file that contains a private key:

.. code-block:: bash

   $ knife bootstrap 192.168.1.1 -x username -i ~/.ssh/id_rsa --sudo



