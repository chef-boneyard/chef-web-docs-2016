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

where ``_admins``, ``_db_users``, ``_db_config``, ``_standard_packages``, and ``_global_shell_settings`` are the names of individual data bags and all of the files that end with ``.json`` are the individual data bag items. 