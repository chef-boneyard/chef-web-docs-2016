.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``delete`` argument is used to delete a specified cookbook or cookbook version.

This argument has the following syntax::

   knife cookbook delete COOKBOOK_NAME [COOKBOOK_VERSION] (options)

This argument has the following options:

``-a``, ``--all``
   |all cookbooks delete|

``-c CONFIG``, ``--config CONFIG``
   |config|

``--color``
   |color|

``COOKBOOK_VERSION``
   |COOKBOOK_VERSION delete|

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

``-p``, ``--purge``
   |purge cookbook|

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

For example, to delete version "0.8" from a cookbook named "smartmon", enter:

.. code-block:: bash

   $ knife cookbook delete smartmon version 0.8

Type ``Y`` to confirm a deletion.
