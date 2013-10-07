.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Having reviewed the architecture and deployment prerequisites, you should be ready to install |chef openstack|.

* Be sure to read and understand the prerequisites for installation
* Check out the |chef repo openstack| from |github|
* Follow the Berkshelf instructions to download all of the appropriate cookbooks
* Edit the environment that will be used
* Upload all the roles, environments, cookbooks and data bags as necessary (using |spiceweasel|). On the appropriate nodes, apply the proper roles to deploy
* Converge the nodes, controller first, then compute
* Log in to the |openstack horizon| dashboard and either install or download the private key
* Create a test node


