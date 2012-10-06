.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``edit`` argument is used to edit the details of a registered |chef| client. When this argument is run, |knife| will open $EDITOR to enable editing of ENVIRONMENT attributes. When finished, |knife| will update the |chef server| with those changes. 

This argument has the following syntax::

   knife client edit CLIENT_NAME

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

``-k KEY``, ``--key KEY``
   |key|

``-n``, ``--disable-editing``
   |no-editor|

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

For example, to edit a client with the name "exampleorg-validator", enter:

.. code-block:: bash

   $ knife client edit exampleorg-validator




