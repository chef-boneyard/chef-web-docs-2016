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

``--secret SECRET``
   |secret|

``--secret-file FILE``
   |secret-file|

.. note::  For encrypted data bag items, use *either* ``--secret`` or ``--secret-file``, not both.

**Examples**

To create a data bag on the |chef server| from a file:

.. code-block:: bash

   $ knife data bag from file "path to JSON file"

To create a data bag named "devops_data" that contains encrypted data, enter:

.. code-block:: bash

   $ knife data bag from file devops_data --secret-file "path to decryption file"
