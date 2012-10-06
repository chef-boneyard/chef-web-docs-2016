.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``bootstrap windows winrm`` argument is used to bootstrap |chef| installations in a |windows| environment, using |windows remote management| and the |ws management| protocol for communication. This argument requires the fully-qualified domain name of the host machine to be specified.

This argument has the following syntax::

   knife bootstrap windows winrm FQDN

This argument has the following options:

``--bootstrap-proxy PROXY_URL``
   |bootstrap-proxy|

``--bootstrap-version VERSION``
   |bootstrap-version|

``-c CONFIG``, ``--config CONFIG``
   |config|

``--color``
   |color|

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

``-h``, ``--help``
   |help|

``-k KEY``, ``--key KEY``
   |key|

``--no-color``
   |no-color|

``-n``, ``--disable-editing``
   |no-editor|

``--N NAME``, ``--node-name NAME``
   |node-name|

``--prerelease``
   |prerelease|

``--print-after``
   |print-after|

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

``-y``, ``--yes``
   |yes|

For example:

.. code-block:: bash

   $ knife bootstrap windows winrm ec2-50-xx-xx-124.compute-1.amazonaws.com -r 'role[webserver],role[production]' -x Administrator -P 'super_secret_password'

