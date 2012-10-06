.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``image list`` argument is used to list of images from the |hp cloud| environment, listed by ID and name.

This argument has the following syntax::

   knife hp image list

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

   ID                Name
   1234              CentOS 5.6 Server 64-bit
   1358              CentOS 6.2 Server 64-bit
   1361              Debian Squeeze 6.0.3 Server 64-bit
   1236              Ubuntu Lucid 10.04 LTS Server 64-bit
   1238              Ubuntu Maverick 10.10 Server 64-bit
   1240              Ubuntu Natty 11.04 Server 64-bit
   1242              Ubuntu Oneiric 11.10 Server 64-bit

