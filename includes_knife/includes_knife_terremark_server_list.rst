.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server list`` argument is used to find instances that are associated with a |terremark| account. The results may show instances that are not currently managed by the |chef server|.

This argument has the following syntax::

   knife terremark server list (options)

This argument has the following options:

``-A USER_NAME``, ``--terremark-username USER_NAME``
   |terremark-username|

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

``-K PASSWORD``, ``--terremark-password PASSWORD``
   |terremark-password|

``--no-color``
   |no-color|

``-n``, ``--disable-editing``
   |no-editor|

``--print-after``
   |print-after|

``-s URL``, ``--server-url URL``
   |server-url|

``-S SERVICE_NAME``, ``--terremark-service SERVICE_NAME``
   |terremark-service|

``-u USER``, ``--user USER``
   |user|

``-v``, ``--version``
   |version chef|

``-V``, ``--verbose``
   |verbose|

``-y``, ``--yes``
   |yes|

For example, enter:

.. code-block:: bash

   $ knife terremark server list -A useraccount -K password -S service_name

to return something like:

.. code-block:: bash

   xxxxx

