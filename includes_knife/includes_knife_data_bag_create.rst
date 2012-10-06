.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``create`` argument is used to add a data bag to the |chef server|.

This argument has the following syntax::

   knife data bag create DATA_BAG_NAME [DATA_BAG_ITEM] (options)

This argument has the following options:

``-c CONFIG``, ``--config CONFIG``
   |config|

``--color``
   |color|

``DATA_BAG_ITEM``
   |DATA_BAG_ITEM|

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

``--print-after``
   |print-after|

``-s URL``, ``--server-url URL``
   |server-url|

``--secret SECRET``
   |secret|

``--secret-file FILE``
   |secret-file|

``-u USER``, ``--user USER``
   |user|

``-v``, ``--version``
   |version chef|

``-V``, ``--verbose``
   |verbose|

``-y``, ``--yes``
   |yes|

.. note:: For encrypted data bag items, use *either* ``--secret`` or ``--secret-file``, not both.

For example, to create a data bag named "admins", enter:

.. code-block:: bash

   $ knife data bag create admins

to return:

.. code-block:: bash

   Created data_bag[admins]

