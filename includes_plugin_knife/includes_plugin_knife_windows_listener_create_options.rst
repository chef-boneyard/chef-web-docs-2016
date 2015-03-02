.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This argument has the following options:

``-c CERT_PATH``, ``--cert-install CERT_PATH``
   |path certificate_windows_store|

``-cp PASSWORD``, ``--cert-passphrase PASSWORD``
   |password certificate_ssl|

``-h HOST_NAME``, ``--hostname HOST_NAME``
   |listener_hostname| For example, ``--hostname something.mydomain.com`` or ``*.mydomain.com``. Default value: ``*``.

``-p PORT``, ``--port PORT``
   |winrm_port| Default value: ``5986``.

``-t THUMBPRINT``, ``--cert-thumbprint THUMBPRINT``
   |thumbprint| Required when the ``--cert-install`` option is not part of a command.
