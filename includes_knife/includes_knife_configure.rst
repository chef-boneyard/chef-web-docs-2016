.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|knife configure|

This sub-command has the following syntax::

   knife configure (options)

This sub-command has the following options:

``-c CONFIG``, ``--config CONFIG``
   |config|

``--client DIRECTORY``
   |client|

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

``-i``, ``--initial``
   |initial|

``-k KEY``, ``--key KEY``
   |key|

``--no-color``
   |no-color|

``-n``, ``--disable-editing``
   |no-editor|

``--print-after``
   |print-after|

``-r REPO``, ``--repository REPO``
   |repository|

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

For example, to create a |knife rb| file, enter:

.. code-block:: bash

   $ knife configure
   
To configure a |client rb|, enter:

.. code-block:: bash

   $ knife configure client '/directory'


