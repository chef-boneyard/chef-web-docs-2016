.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef-server-ctl.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This subcommand has the following options:

``-p PATH`` ``--public-key-path PATH``
   The location to a file containing valid PKCS#1 public key to be added.
   If not passed, then the server will generate a new one for you and return the private key to STDOUT.

``-e DATE`` ``--expiration-date DATE``
   An ISO 8601 formatted string: ``YYYY-MM-DDTHH:MM:SSZ``. For example: ``2013-12-24T21:00:00Z``.
   If not passed, expiration will default to infinity.

``-k NAME`` ``--key-name NAME``
   String defining the name of your new key for this user.
   If not passed, it will default to the fingerprint of the public key.
