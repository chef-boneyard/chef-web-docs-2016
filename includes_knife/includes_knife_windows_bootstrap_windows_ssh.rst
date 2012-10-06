.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``bootstrap windows ssh`` argument is used to bootstrap |chef| installations in a |windows| environment, using a command shell that is native to |windows|.

This argument has the following syntax::

   knife bootstrap windows ssh (options)

This argument has the following options:

``--bootstrap-proxy PROXY_URL``
   |bootstrap-proxy|

``--bootstrap-version VERSION``
   |bootstrap-version|

``-c CONFIG``, ``--config CONFIG``
   |config|

``--color``
   |color|

``--defaults``
   |defaults|

``-d DISTRO``, ``--distro DISTRO``
   |distro|

``-e EDITOR``, ``--editor EDITOR``
   |editor|

``-E ENVIRONMENT``, ``--environment ENVIRONMENT``
   |environment|

``-F FORMAT``, ``--format FORMAT``
   |format|

``-h``, ``--help``
   |help|

``-i IDENTITY_FILE``, ``--identity-file IDENTITY_FILE``
   |identity-file|

``-k KEY``, ``--key KEY``
   |key|

``-n``, ``--disable-editing``
   |no-editor|

``--N NAME``, ``--node-name NAME``
   |node-name|

``--no-color``
   |no-color|

``--[no-]host-key-verify``
   |[no-]host-key-verify|

``-p PORT``, ``--ssh-port PORT``
   |ssh-port|

``-P PASSWORD``, ``--ssh-password PASSWORD``
   |ssh-password|

``--print-after``
   |print-after|

``--prerelease``
   |prerelease|

``-r RUN_LIST``, ``--run-list RUN_LIST``
   |run-list|

``-s URL``, ``--server-url URL``
   |server-url|

``-s SECRET``, ``--secret SECRET``
   |secret|

``--secret-file FILE``
   |secret-file|

``--template-file TEMPLATE``
   |template-file|

``-u USER``, ``--user USER``
   |user|

``-v``, ``--version``
   |version chef|

``-V``, ``--verbose``
   |verbose|

``-x USER_NAME``, ``--ssh-user USER_NAME``
   |ssh-user|

``-y``, ``--yes``
   |yes|


For example:

.. code-block:: bash

   $ knife bootstrap windows ssh ec2-50-xx-xx-124.compute-1.amazonaws.com -r 'role[webserver],role[production]' -x Administrator -i ~/.ssh/id_rsa

