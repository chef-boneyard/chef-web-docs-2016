.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef-server-ctl.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This subcommand has the following options:

``CLIENT_NAME``
   The name of the client.

``--expiration-date``
   An ISO 8601 fomatted string: ``YYYY-MM-DDTHH:MM:SS``. For example: ``2013-12-24T21:00:00``.

``--key-name``
   The name of the key under which it is stored. Default value: the fingerprint of the valid PKCS#1 public key.

``ORG_NAME``
   The short name for the organization to which the client belongs.

``PATH_TO_KEY``
   The location of a valid PKCS#1 public key to be added.
