.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |subcommand knife ssl_fetch| subcommand is used to copy SSL certificates from an HTTPS server to the ``trusted_certs_dir`` directory that is used by |knife| and the |chef client| to store trusted SSL certificates. When these certificates match the hostname of the remote server, running ``knife ssl fetch`` is the only step required to verify a remote server that is accessed by either |knife| or the |chef client|.

.. warning:: It is the user's responsibility to verify the authenticity of every SSL certificate before downloading it to the ``trusted_certs_dir`` directory. |knife| will use any certificate in that directory as if it is a 100% trusted and authentic SSL certificate. |knife| will not be able to determine if any certificate in this directory has been tampered with, is forged, malicious, or otherwise harmful. Therefore it is essential that users take the proper steps before downloading certificates into this directory.
