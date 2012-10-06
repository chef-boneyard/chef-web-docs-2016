.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``from file`` argument is used to create a data bag using an existing data bag data as a template. The path to the data bag file must specify one of the following:

* the name of a data bag
* a relative or absolute path to a file

If the name of a data bag is specified, |knife| will search for the data bag in ./data_bags/bag_name/file. Once opened, the JSON file should be a hash that contains at least an ID key which represents the name of the data bag item.

This argument has the following syntax::

   knife data bag from file DATA_BAG_NAME_or_PATH

This argument has the following options:

``-a``, ``--all``
   |all data bags|

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

.. note::  For encrypted data bag items, use *either* ``--secret`` or ``--secret-file``, not both.

For example, to create a data bag from a specified path:

.. code-block:: bash

   $ knife data bag from file /path/to JSON/file

To create a data bag named "devops_data" that contains encrypted data, enter:

.. code-block:: bash

   $ knife node from file devops_data --secret-file /path/to/decryption/file
