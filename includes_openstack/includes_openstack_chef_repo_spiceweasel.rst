.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

There is a `Spiceweasel infrastructure.yml <https://github.com/mattray/spiceweasel>`_ manifest documenting all of the environments,  roles and data bags used by the repository.

To see the commands necessary to push all of the files to the Chef server, run the following command:

``spiceweasel infrastructure.yml``

To actually deploy the repository to your Chef server, run the following command:

``spiceweasel -e infrastructure.yml``
