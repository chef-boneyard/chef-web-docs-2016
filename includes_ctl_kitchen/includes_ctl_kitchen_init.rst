.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``init`` subcommand is used to create an initial KITCHEN environment, including:

* Creating a KITCHEN.YML file
* Appending KITCHEN to the GEMFILE, GITIGNOREFILE, and THORFILE
* Creating the ``test/integration/default`` directory

.. note:: After creating the initial KITCHEN environment, re-run ``bundle install`` to ensure that all GEM dependencies are updated.