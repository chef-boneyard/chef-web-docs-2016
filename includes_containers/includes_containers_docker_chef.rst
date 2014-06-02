.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef| can be used to manage |docker| containers, including:

* Creating and deploying |docker| container images
* Configuring |docker| containers on-boot, and then protecting them against configuration drift
* Provisioning and configuring the environments in which |docker| containers are hosted
* Managing complex, bidirectional dependencies among |docker| containers and other nodes in the network

|docker| containers are managed via a |dockerfile|, where each unique container has its own |dockerfile|.