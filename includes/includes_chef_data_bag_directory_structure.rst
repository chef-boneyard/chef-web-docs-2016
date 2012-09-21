.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

All data bags are stored in the ``data_bags`` directory of the |chef| repository. This directory structure is understood by |knife| so that the full path does not need to be entered when working with data bags from the command line. An example of the ``data_bags`` directory structure::

   data_bags
            |_admins
                       |_charlie.json
                       |_bob.json
                       |_tom.json
            |_db_users
                       |_charlie.json
                       |_bob.json
                       |_sarah.json
            |_db_config
                       |_small.json
                       |_medium.json
                       |_large.json
            |_standard_packages.json
            |_global_shell_settings.json

where ``_admins``, ``_db_users``, ``_db_config``, ``_standard_packages``, and ``_global_shell_settings`` are the names of individual data bags and all of the files that end with ``.json`` are the individual data bag items. When using |knife|, using the following syntax:

.. code-block:: bash

   $ knife data bag argument DATA_BAG_NAME [DATA_BAG_ITEM] (options)

where ``argument`` is one of ``create``, ``delete``, or ``edit``, ``DATA_BAG_NAME`` is the name of the data bag, and ``DATA_BAG_ITEM`` is the name of the data bag item. 

For example, to edit the data bag item (from the above example) named ``_sarah.json``, use the following |knife| command:

.. code-block:: bash

   $ knife data bag edit db_users sarah