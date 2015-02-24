.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |organization pem| is typically added to the |chef repo hidden| directory on the workstation. When a node is bootstrapped from that workstation, the |organization pem| is used to authenticate the newly-created node to the |chef server| during the initial |chef client| run. Starting with |chef client| version 12.1, it is possible to bootstrap a node using the |user pem| file instead of the |organization pem| file. This is known as a "validatorless bootstrap".

To create a node via the |user pem| file, simply delete the |organization pem| file on the workstation. As long as a |user pem| is also present on the workstation from which the validatorless bootstrap operation will be initiated, the bootstrap operation will run and will use the |user pem| file instead of the |organization pem| file.
