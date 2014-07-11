.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef container| is a distribution of the |chef client| that includes components designed to support the unique requirements of running the |chef client| from within a |linux| container.

* |chef container| comes packaged with |chef client|, |runit| and ``chef-init``
* Bootstrap the |chef client| without an |ssh| connection
* Use the |subcommand knife container| |knife| plugin to work with |linux| containers; use the ``docker build`` and ``docker init`` arguments to manage |docker| image contexts
* Use |chef client| resources the same way in a container as on any |unix|- or |linux|-based platform
