.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``flavor list`` argument is used to get a list of servers from the |hp cloud| environment, listed by ID, name, cores, RAM, and disk size.

This argument has the following syntax::

   knife hp flavor list

This argument has the following options:

``-A ID``, ``--hp-account ID``
   |hp-account|

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

``--hp-auth URI``
   |hp-auth|

``-k KEY``, ``--key KEY``
   |key|

``-K SECRET``, ``--hp-secret SECRET``
   |hp-secret|

``--no-color``
   |no-color|

``-n``, ``--disable-editing``
   |no-editor|

``--print-after``
   |print-after|

``-s URL``, ``--server-url URL``
   |server-url|

``-T ID``, ``--hp-tenant ID``
   |hp-tenant|

``-u USER``, ``--user USER``
   |user|

``-v``, ``--version``
   |version chef|

``-V``, ``--verbose``
   |verbose|

``-y``, ``--yes``
   |yes|

``-Z ZONE``, ``--hp-zone ZONE``
   |hp-zone|

For example, enter:

.. code-block:: bash

   $ knife hp flavor list

to return:

.. code-block:: bash

   ID        Name              Cores     RAM          Disk
   100       standard.xsmall   1         1024 MB      30 GB
   101       standard.small    2         2048 MB      60 GB
   102       standard.medium   2         4096 MB      120 GB
   103       standard.large    4         8192 MB      240 GB
   104       standard.xlarge   4         16384 MB     480 GB
   105       standard.2xlarge  8         32768 MB     960 GB

