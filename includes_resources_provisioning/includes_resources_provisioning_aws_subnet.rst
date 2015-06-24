.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``aws_subnet`` resource is a driver-specific resource used by |chef provisioning|. Use the ``aws_subnet`` resource to configure a subnet within a defined virtual network within |amazon vpc| (the networking layer of |amazon ec2|).

This defined virtual network is dedicated to a specific |amazon aws| account and is logically isolated from other defined virtual network in |amazon aws|. One (or more) subnets may exist within this defined virtual network.