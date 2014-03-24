.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |subcommand knife ssl_check| subcommand is used to verify the SSL configuration for the |chef server oec| and/or |chef server osc| servers, or at another location specified by a URL or URI.

.. warning:: When verification of a remote server's |ssl| certificate is disabled, the |chef client| will issue a warning similar to "SSL validation of HTTPS requests is disabled. HTTPS connections are still encrypted, but the chef-client is not able to detect forged replies or man-in-the-middle attacks." To configure |ssl| for the |chef client|, set ``ssl_verify_mode`` to ``:verify_peer`` **or** ``verify_api_cert`` to ``true`` in the |client rb| file.