.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The authentication process ensures the |chef server| responds only to requests made by trusted users. A public key encryption is used for all server types: |chef server oec| (hosted and non-hosted), and |chef server osc|. When a node and/or a workstation is configured to run the |chef client|, both public and private keys are created. The public key is stored on the |chef server|, while the private key is returned to the user for safe keeping. (The private key is a .pem file located in the ``.chef`` directory or in ``/etc/chef``.) The following executables use the |api chef server| when communicating with the |chef server|:

* |chef client|
* |knife|
* |chef validator| (only during the first |chef client| run on a node)

Each request to the |chef server| from those executables encrypts a special group of HTTP headers along with the private key. The |chef server| then uses the public key to decrypt the headers and verify the contents.
