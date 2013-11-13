.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

All data bags are stored in the ``data_bags`` directory of the |chef repo|. This directory structure is understood by |knife| so that the full path does not need to be entered when working with data bags from the command line. An example of the ``data_bags`` directory structure::

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


where ``admins``, ``db_users``, and ``db_config`` are the names of individual data bags and all of the files that end with ``.json`` are the individual data bag items. 
