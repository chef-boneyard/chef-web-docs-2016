.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``create`` argument is used to add an environment object to the |chef server|. When this argument is run, |knife| will open $EDITOR to enable editing of the ENVIRONMENT description field (unless a description is specified as part of the command). When finished, |knife| will add the environment to the |chef server|. 

This argument has the following syntax::

   knife environment create ENVIRONMENT_NAME -d DESCRIPTION

This argument has the following options:

``-c CONFIG``, ``--config CONFIG``
   |config|

``--color``
   |color|

``--defaults``
   |defaults|

``-d DESCRIPTION``, ``--description DESCRIPTION``
   |description environment|

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

   $ knife environment create dev -d "The development environment."


