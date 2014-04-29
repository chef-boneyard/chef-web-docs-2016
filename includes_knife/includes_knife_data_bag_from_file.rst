.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``from file`` argument is used to:

* Add a data bag item to a data bag
* Update the contents of an existing data bag item 

The data bag itself must already exist on the |chef server| and must be specified as part of the command. The contents of the data bag item are specified using a |json| file. This |json| file may be located at a relative or absolute path; its location must be specified as part of the command. The |json| file that defines the contents of the data bag item must at least contain the name of the data bag item---``"id": "name"``.

.. warning:: A |chef client| must be version 11.6 (or higher) when using the ``knife data bag from file`` argument with the |chef oec| or |chef osc| version 11 servers.