.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``create`` argument is used to create a user. This process will generate an RSA key pair for the named user. The public key will be stored on the |chef server| and the private key will be displayed on ``STDOUT`` or written to a named file.

* For the user, the private key should be copied to the system as |path chef private key|.
* For |knife|, the private key is typically copied to |path chef private key admin| and referenced in the |knife rb| configuration file.

