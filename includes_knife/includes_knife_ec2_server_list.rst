.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server list`` argument is used to find instances that are associated with a |amazon ec2| account. The results may show instances that are not currently managed by the |chef server|.

This argument has the following syntax::

   knife ec2 server list

This argument has the following options:

``-A KEY``, ``--aws-access-key-id KEY``
   |aws-access-key-id|

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

``-n``, ``--no-name``
   |no name tags|

``--no-color``
   |no-color|

``-n``, ``--disable-editing``
   |no-editor|

``--print-after``
   |print-after|

``--region REGION``
   |region amazon|

``-s URL``, ``--server-url URL``
   |server-url|

``-t TAG1, TAG2``, ``--tags TAG1, TAG2``
   |tags list|

``-u USER``, ``--user USER``
   |user|

``-v``, ``--version``
   |version chef|

``-V``, ``--verbose``
   |verbose|

``-y``, ``--yes``
   |yes|
