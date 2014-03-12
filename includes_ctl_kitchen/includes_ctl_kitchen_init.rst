.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``init`` subcommand is used to create an initial |kitchen| environment, including:

* Creating a |kitchen yml| file
* Appending |kitchen| to the |rubygems| file, |gitignore|, and |thorfile|
* Creating the ``test/integration/default`` directory

.. note:: After creating the initial |kitchen| environment, re-run ``bundle install`` to ensure that all |rubygems| file dependencies are updated.