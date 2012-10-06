.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``download`` argument is used to download a cookbook from the |chef server|. 

This argument has the following syntax::

   knife cookbook download COOKBOOK_NAME [COOKBOOK_VERSION] (options)

This argument has the following options:

``-c CONFIG``, ``--config CONFIG``
   |config|

``--color``
   |color|

``-d DOWNLOAD_DIRECTORY``, ``--dir DOWNLOAD_DIRECTORY``
   |dir|

``--defaults``
   |defaults|

``-e EDITOR``, ``--editor EDITOR``
   |editor|

``-E ENVIRONMENT``, ``--environment ENVIRONMENT``
   |environment|

``-f``, ``--force``
   |force directory|

``-F FORMAT``, ``--format FORMAT``
   |format|

``-h``, ``--help``
   |help|

``-k KEY``, ``--key KEY``
   |key|

``-n``, ``--disable-editing``
   |no-editor|

``-N``, ``--latest``
   |latest|

``--no-color``
   |no-color|

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
 
For example, to download a cookbook named "smartmon", enter:

.. code-block:: bash

   $ knife cookbook download smartmon
