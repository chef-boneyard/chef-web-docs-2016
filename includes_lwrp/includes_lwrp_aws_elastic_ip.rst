.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |lwrp aws elastic ip| lightweight resource is used to associate or disassociate elastic IP addresses used within |amazon ec2|. New elastic IP address must be added manually to the |amazon ec2| account. When an elastic IP address is associated with a node, network connectivity may be lost. This lightweight resource used the ``right_aws`` |ruby| |gem| to access the |amazon ec2| API.
