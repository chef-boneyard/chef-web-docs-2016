.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``share`` argument is used to add a cookbook to |url cookbook|. This action will require a user account and a certificate for |url community|. By default, |knife| will use the user name and API key that is identified in the configuration file used during the upload; otherwise these values must be specified on the command line or in an alternate configuration file. If a cookbook already exists on |url cookbook|, then only an owner or maintainer of that cookbook can make updates.

This argument has the following syntax::

   knife cookbook site share COOKBOOK_NAME CATEGORY (options)

This argument has the following options:

``CATEGORY``
   |CATEGORY|

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

``--no-color``
   |no-color|

``-n``, ``--disable-editing``
   |no-editor|

``-o PATH:PATH``, ``--cookbook-path PATH:PATH``
   |cookbook-path|

``--print-after``
   |print-after|

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

For example:

.. code-block:: bash

   $ knife cookbook site share "apache2" "Web Servers"
