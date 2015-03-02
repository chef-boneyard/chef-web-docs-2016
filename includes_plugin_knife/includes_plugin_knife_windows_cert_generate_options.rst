.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This argument has the following options:

``-cp PASSWORD``, ``--cert-passphrase PASSWORD``
   |password certificate_ssl|

``-cv MONTHS``, ``--cert-validity MONTHS``
   |ssl_certificate length_months| Default value: ``24``.

``-h HOST_NAME``, ``--hostname HOST_NAME``
   |listener_hostname| For example, ``--hostname something.mydomain.com`` or ``*.mydomain.com``. Default value: ``*``.

``-k LENGTH``, ``--key-length LENGTH``
   |key length| Default value: ``2048``.

``-o PATH``, ``--output-file PATH``
   |path output_file| For example: ``--output-file /home/.winrm/server_cert`` will create ``server_cert.b64``, ``server_cert.pem``, and ``server_cert.pfx`` in the ``server_cert`` directory. Default location: ``current_directory/winrmcert``.
