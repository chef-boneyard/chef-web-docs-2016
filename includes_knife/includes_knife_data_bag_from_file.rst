.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``from file`` argument is used to create a data bag on the |chef server| from a file. The path to the data bag file must specify one of the following:

* the name of a data bag
* a relative or absolute path to a file

If the name of a data bag is specified, |knife| will search for the data bag in ``./data_bags/bag_name/file``. Once opened, the |json| file should be a hash that contains at least an ID key which represents the name of the data bag item.

